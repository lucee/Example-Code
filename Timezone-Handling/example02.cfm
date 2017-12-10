<cfscript>

unix0=parseDateTime('Thursday, January 1, 1970 0:00:00 AM UTC');

dump(
	var:unix0.getTime()
	,label:"time passed in ms since 1/1/1970 00:00:00 UTC "
);

</cfscript>