<cfscript>

directory sort="name" action="list" directory=getDirectoryFromPath(getCurrentTemplatePath()) filter="example*.cfm" name="dir";
loop query=dir {
	echo('<a href="#dir.name#">#dir.name#</a><br>');
}
</cfscript>