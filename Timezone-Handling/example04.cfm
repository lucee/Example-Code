<cfscript>

unix0=parseDateTime('Thursday, January 1, 1970 0:00:00 AM UTC');

setTimeZone("PST"); // Pacific 
dump(unix0);

setTimeZone("MST"); // Mountain 
dump(unix0);

setTimeZone("CST"); // Central
dump(unix0);

setTimeZone("EST"); // Eastern
dump(unix0);

</cfscript>