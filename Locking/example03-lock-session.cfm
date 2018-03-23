<cfscript>
session.token=0;
function test(index) {
	thread {
		lock scope="session" {
			local.token=++session.token;
			sleep(10);
			session.token++;
			systemOutput( (session.token-token)==1 ? "fine!" : "something wrong here!" , true);
		}
	}
}


systemOutput("xxxxxxxxxxxxxxxxxxxxxxxxxx",true);
loop from=1 to=5 index="i" {
	test(i);
}
dump("done!");


</cfscript>
