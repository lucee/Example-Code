<cfscript>

sct.file=getCurrentTemplatePath();
sct.directory=getDirectoryFromPath(sct.file);
dump(sct);

dump(fileRead(sct.file));
dump(directoryList(sct.directory));

</cfscript>