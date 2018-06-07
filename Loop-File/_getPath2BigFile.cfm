
<cfscript>
// getting the application log
dir=getPageContext().getConfig().getLogDirectory();
qry=directoryList(path:dir,listInfo:'query',sort:'size desc');
path=qry.directory&server.separator.file&qry.name;
</cfscript>