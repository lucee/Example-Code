<cfscript>

	file=GetDirectoryFromPath(GetCurrentTemplatePath())&'catalog.xml';
	
	dom=XMLParse(file);

	dump(dom);
	
	// ... extract data needed
</cfscript>