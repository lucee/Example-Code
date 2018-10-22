<cfscript>

	_url="http://central.maven.org/maven2/org/lucee/esapi/2.1.0.1/esapi-2.1.0.1.jar";
	http url=_url result="res";
	if(res.status_code!=200) throw "wtf";
	dump(res.responseheader);
	

	// store the file
	localFile="esapi-2.1.0.1.jar";
	fileWrite(localFile,res.fileContent);
	
	// get a hash
	//dump(fileInfo(localFile));
	//dump(hash(fileReadBinary(localFile),"md5"));
	//dump(hash(fileReadBinary(localFile),"SHA1"));

	
	
	// validate file
	if(!isEmpty(res.responseheader["X-Checksum-MD5"]?:"")) {
		fi=fileInfo("esapi-2.1.0.1.jar");
		if(res.responseheader["X-Checksum-MD5"]==fi.checksum) {
			dump("we have a match!");
		}
		else {
			fileDelete("esapi-2.1.0.1.jar");
			dump("something went wrong! give it an other try?");
		}

	}
	


</cfscript>