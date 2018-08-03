<cfscript>
path="test.txt";


try {
	if(!fileExists(path)) {
		fileWrite(path,"content of the file");
	}
	dump(fileRead(path));
}
catch(e) {
	echo(e);
}

if(fileExists(path)) fileDelete(path);

</cfscript>