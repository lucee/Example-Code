<cfscript>

// Thread Pool
tasks.each(
	function(value, key, struct){
		systemOutput(arguments,true);
	}
	,true
	,20 // ATM default for max threads is 20, instaed we plan to use a smart thread pool in the future (Java ExecutorService) 
);

thread /* action="thread" name="whatever" */ {
	sleep();
}
// make thread smarter by also use a pool for threads



// Extend parallel
loop from=1 to=10 index="i" parallel=true {
	...
}

// ???
for(i=0;i<10;i++;true) {

}

</cfscript>