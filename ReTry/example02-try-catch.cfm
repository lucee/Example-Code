<cfscript>
path="test.txt";

function fr() {
	dump(fileRead(path));
}


try {
	fr();
}
catch(e) {
	if(!fileExists(path)) {
		fileWrite(path,"content of the file");
		fr();
	}
	else echo(e);
}

if(fileExists(path)) fileDelete(path);

</cfscript>