<cfscript>
	fi=fileInfo("esapi-2.1.0.1.jar");
	header name="Content-MD5" value=fi.checksum;
	content file="esapi-2.1.0.1.jar" type="application/x-zip-compressed";
</cfscript>