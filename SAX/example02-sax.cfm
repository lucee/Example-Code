<cfscript>

	file=GetDirectoryFromPath(GetCurrentTemplatePath())&'catalog.xml';
	
	catalog=new XMLCatalog(file);
	
	dump(catalog.execute());

</cfscript>