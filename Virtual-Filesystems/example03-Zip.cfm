<cfscript>


sct.file=getCurrentTemplatePath();
sct.directory=getDirectoryFromPath(sct.file);
sct.zipFile=sct.directory&"testbox-2.2.0.zip";
sct.zip="zip://"&sct.zipFile&"!";
dump(sct);

dump(directoryList(sct.zip));
dump(directoryList(sct.zip&"/testbox"));
echo("<pre>");echo(fileRead(sct.zip&"/testbox/readme.md"));echo("</pre>");


// you can also use tar:// and tgz://

</cfscript>