<cfscript>

function napASecond() localmode=true {
	sleep(1000);
}
start=getTickCount();
napASecond();
dump("done in #getTickCount()-start#ms");
</cfscript>
