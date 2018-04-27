<cfscript>
	setting requesttimeout=1000;

	admin=new Administrator("web","server");
	
	// Providers
	dump(admin.getExtensionProviders());

	// List
	dump(admin.getExtensions());
	dump(admin.getServerExtensions());
	dump(extensionList());

	// Install Update MongoDB
	admin=new Administrator("server","server");
	admin.updateExtension("E6634E1A-4CC5-4839-A83C67549ECA8D5B");
	dump(admin.getExtensions());
	dump(extensionExists("E6634E1A-4CC5-4839-A83C67549ECA8D5B"));

	// Install older version
	admin=new Administrator("server","server");
	admin.updateExtension("E6634E1A-4CC5-4839-A83C67549ECA8D5B","3.2.2.52");
	dump(admin.getExtensions());
	dump(extensionExists("E6634E1A-4CC5-4839-A83C67549ECA8D5B"));

	
	// Remove MongoDB
	admin=new Administrator("server","server");
	admin.removeExtension("E6634E1A-4CC5-4839-A83C67549ECA8D5B");
	dump(admin.getExtensions());
	dump(extensionExists("E6634E1A-4CC5-4839-A83C67549ECA8D5B"));
	
	

</cfscript>