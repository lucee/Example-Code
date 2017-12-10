<cfscript>

unix0=parseDateTime('Thursday, January 1, 1970 0:00:00 AM UTC');

dump(dateTimeFormat(unix0,"full","PST")); // Pacific
dump(dateTimeFormat(unix0,"full","MST")); // Mountain
dump(dateTimeFormat(unix0,"full","CST")); // Central
dump(dateTimeFormat(unix0,"full","EST")); // Eastern 

</cfscript>