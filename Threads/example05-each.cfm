<cfscript>

tasks = ["Susi","Sorglos"];

start=getTickCount();
tasks.each(
	function(value, index, array){
		systemOutput(value,true);
		sleep(1000);
	}
	,true
);
dump("done in #getTickCount()-start#ms");


</cfscript>