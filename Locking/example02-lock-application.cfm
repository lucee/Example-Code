<cfscript>
application.token=0;
function test(index) {
	thread {
		lock scope="application" {
			local.token=++application.token;
			sleep(10);
			application.token++;
			systemOutput( (application.token-token)==1 ? "fine!" : "something wrong here!" , true);
		}
	}
}


systemOutput("xxxxxxxxxxxxxxxxxxxxxxxxxx",true);
loop from=1 to=5 index="i" {
	test(i);
}
dump("done!");


</cfscript>
