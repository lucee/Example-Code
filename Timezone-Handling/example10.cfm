<cfscript>
unix0=parseDateTime('Thursday, January 1, 1970 0:00:00 AM UTC');

dump(unix0);

dump(dateConvert("local2Utc",unix0));


t=dateConvert("local2Utc",unix0);
t=dateConvert("local2Utc",t);
t=dateConvert("local2Utc",t);
t=dateConvert("local2Utc",t);
t=dateConvert("local2Utc",t);
t=dateConvert("local2Utc",t);
t=dateConvert("local2Utc",t);
t=dateConvert("local2Utc",t);
t=dateConvert("local2Utc",t);
t=dateConvert("local2Utc",t);
t=dateConvert("local2Utc",t);
t=dateConvert("local2Utc",t);
t=dateConvert("local2Utc",t);
t=dateConvert("local2Utc",t);
dump(t);


</cfscript>