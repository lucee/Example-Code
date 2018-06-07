
<cfscript>

thread name="test" type="deamon" {
	throw "hopala!";
}
thread action="join" name="test";
dump(cfthread.test);

</cfscript>