<cfscript>
path="test.txt";


try {
	dump(fileRead(path));
}
catch(e) {
	if(!fileExists(path)) {
		fileWrite(path,"content of the file");
		retry;
	}
	echo(e);
}

if(fileExists(path)) fileDelete(path);

</cfscript>