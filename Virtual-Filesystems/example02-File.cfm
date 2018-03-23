<cfscript>

sct.file=getCurrentTemplatePath();
sct.directory=getDirectoryFromPath(sct.file);

sct.file="file://"&sct.file;
sct.directory="file://"&sct.directory;

dump(sct);
dump(fileRead(sct.file));
dump(directoryList(sct.directory));

</cfscript>