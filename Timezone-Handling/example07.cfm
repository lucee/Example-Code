<cfscript>

unix0=parseDateTime('Thursday, January 1, 1970 0:00:00 AM UTC');

setTimeZone("PST");

dump(unix0); 

// json
dump(serializeJson(unix0)); 

// wddx
wddx action="cfml2wddx" input=unix0 output="wddx";
dump(wddx); 

getPageContext().setTimestampWithTSOffset(true);
dump(unix0);
</cfscript>