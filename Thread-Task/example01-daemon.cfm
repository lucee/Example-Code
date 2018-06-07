
<cfscript>

thread name="test" type="daemon" {
	throw "hopala!";
}
thread action="join" name="test";
dump(cfthread.test);

</cfscript>