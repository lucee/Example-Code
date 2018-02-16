<cfscript>

function napASecond(index) localmode=true {
	thread  {
		thread.start=now();
		sleep(1000)
		thread.end=now();
	}
}


start=getTickCount();
loop from=1 to=5 index="index" {
	napASecond(index);
}

// show threads
dump(var:cfthread,expand:false);

// wait for all threads to finish
thread action="join" name=cfthread.keyList();

// show threads
dump(var:cfthread,expand:false);

dump("done in #getTickCount()-start#ms");
</cfscript>
