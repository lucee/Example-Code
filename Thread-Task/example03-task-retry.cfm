
<cfscript>

thread name="test" type="task" 
	retryinterval={
		tries:3, 
		interval:createTimeSpan(0,0,0,1)
	} {

	throw "hopala!";
}
</cfscript>