component {
	this.name="CFCamp2016";

	// datasource definition including bundle data, so Lucee downloads the jar if necessary
	this.datasources["mydb"] = {
		  class: 'org.hsqldb.jdbcDriver'
		, bundleName: 'org.hsqldb.hsqldb'
		, bundleVersion: '2.3.2'
		, connectionString: 'jdbc:hsqldb:file:#getDirectoryFromPath(getCurrentTemplatePath())#/datasource/db'
	};
}