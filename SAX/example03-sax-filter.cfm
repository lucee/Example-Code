<cfscript>

	file=GetDirectoryFromPath(GetCurrentTemplatePath())&'catalog.xml';

	catalog=new XMLCatalog2(file);
	
	dump(catalog.execute({year:"1995"}));

</cfscript>