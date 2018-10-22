<cfscript>
	// possible MD5 headers
	HEADER_NAMES.SHA1=["Content-SHA1","X-Checksum-SHA1"];
	HEADER_NAMES.MD5=["Content-MD5","X-Checksum-MD5"]; // ETag


	_url=getDirectoryFromPath(cgi.request_url)&"/_download.cfm";
	
	http url=_url result="res";
	if(res.status_code!=200) throw "wtf";
	
	// store the file
	fileWrite("clone.jar",res.fileContent);
	

	// see if we have one of the MD5 headers 
	checksum={type:"",name:""};
	loop label="outer" struct=HEADER_NAMES index="type" item="names" {
		loop array=names item="name" {
			if(structKeyExists(res.responseheader,name)) {
				checksum.type=type;
				checksum.name=name;
				checksum.value=res.responseheader[name];

				break outer;
			}
		}
	}
	dump(checksum);

	
	// validate file
	if(!isEmpty(checksum.name)) {
		cs=hash(fileReadBinary("clone.jar"),checksum.type);
		//dump(checksum);
		if(checksum.value==cs) {
			dump("we have a match!");
		}
		else {
			fileDelete("clone.jar");
			dump("something went wrong! give it an other try?");
		}

	}
</cfscript>