<cfsetting requesttimeout="1000">
<cfscript>

sct=structNew("soft");

function grapURL(strURL) localmode=true {
	if(!isNull(application.urls[strURL])) return application.urls[strURL];
	if(isNull(application.urls)) application.urls=structNew("soft");

	http url=strURL result="res";
	res['grapped']=now();
	application.urls[strURL]=res;
	return res;
}

start=getTickCount();
grapURL("http://lucee.org/");
dump(getTickCount()-start);


start=getTickCount();
grapURL("http://lucee.org/");
dump(getTickCount()-start);

</cfscript>
