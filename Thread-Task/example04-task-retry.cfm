
<cfscript>

thread name="test" type="task" 
	retryinterval=[
	{tries:3, interval:createTimeSpan(0,0,0,1)},
	{tries:5, interval:createTimeSpan(0,0,0,5)},
	{tries:10, interval:createTimeSpan(0,0,0,10)},
	{tries:10, interval:createTimeSpan(0,0,1,0)},
	{tries:20, interval:createTimeSpan(0,0,10,0)}
	] {

	throw "hopala!";
}
</cfscript>