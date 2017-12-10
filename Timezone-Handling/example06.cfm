<cfscript>

unix0=parseDateTime('Thursday, January 1, 1970 0:00:00 AM UTC');
unix0=createDateTime(1970,1,1,0,0,0,0,'UTC');


dump(day(unix0,"PST")); // Pacific/US
dump(day(unix0,"CET")); // Central Europe

</cfscript>