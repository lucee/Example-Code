<cfscript>

nbr=123.456;
dump(lsCurrencyFormat(nbr,"international","de_CH"));
dump(lsCurrencyFormat(nbr,"international","en_US"));

unix0=parseDateTime('Thursday, January 1, 1970 0:00:00 AM UTC');
dump(dateTimeFormat(unix0,'long','US/Hawaii'));
dump(dateTimeFormat(unix0,'long','Pacific/Tahiti'));


</cfscript>