<cfscript>
tasks = [];
loop from=1 to=100 index="i" {
	arrayAppend(tasks,"t"&i)
}

start=getTickCount();
tasks.each(
	function(value, index, array){
		systemOutput(value,true);
		sleep(1000);
	}
	,true
	//,100
);
dump("done in #getTickCount()-start#ms");


</cfscript>