<cfscript>

types=['regular':false,'lazy':true];
results=structNew("ordered");

loop struct=types index="type" item="lazy" {
	loop from=1 to=10 index="i" {
		start=getTickCount('nano');
		query name="qry"  returntype="query" lazy=lazy {
			echo("select * from lazyQuery");
		}
		x=qry.val;
		time=getTickCount('nano')-start;
		
		if(isNull(results[type]) || results[type]>time)results[type]=time;
	}
}


// format results
results.regular=decimalFormat(results.regular/1000000)&"ms";
results.lazy=decimalFormat(results.lazy/1000000)&"ms";


dump(results);





</cfscript>