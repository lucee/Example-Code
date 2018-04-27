<cfscript>
raw=getDirectoryFromPath(getCurrentTemplatePath());
root=mid(raw,1,len(raw)-1);
directory sort="name" action="list" recurse=true directory=root  name="dir";

loop query=dir {
	if(dir.type=="dir" && dir.directory==root) {
		dirName=dir.name;
		fileName="index.cfm";
		loop query=dir {
			if(dir.type=="file" && dir.directory==raw&dirName && right(dir.name,4)=='.cfm') {
				fileName=dir.name;
				break;
			}
		}
		echo('<a href="#dirName#/#fileName#">#dirName#/</a><br>');
	}
	
}
</cfscript>