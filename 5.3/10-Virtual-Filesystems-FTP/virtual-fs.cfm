<cfscript>
ftp="ftp://#request.ftp.user#:#request.ftp.pass#@ftp53.world4you.com:21/";
ftp="ftp:///";
ftp="ftp://ftp53.world4you.com:21/";
ftp="ftp://ftp53.world4you.com/";

//ftp="ftp://#request.ftp.user#:#request.ftp.pass#@/";

dump(directoryList(ftp));


</cfscript>