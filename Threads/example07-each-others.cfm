<cfscript>
// ARRAY
tasks = ["a","b"];

tasks.each(
	function(value, key, struct){
		systemOutput(arguments,true);
	}
	,true
);

arrayEach(
	tasks
	,function(value, key, struct){
		systemOutput(arguments,true);
	}
	,true
);

// STRUCT
tasks = {a:1,b:2};

structEach(
	tasks
	,function(value, key, struct){
		systemOutput(arguments,true);
	}
	,true
);

tasks.each(
	function(value, key, struct){
		systemOutput(arguments,true);
	}
	,true
);

// QUERY
persons = query(
	'firstName':['Susi','Harry']
	,'lastName':['Sorglos','Hirsch']
);


queryEach(
	persons
	,function(value, row, query){
		systemOutput(arguments,true);
	}
	,true
);

persons.each(
	function(value, row, query){
		systemOutput(arguments,true);
	}
	,true
);

dump("done");
</cfscript>