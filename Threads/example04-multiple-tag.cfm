<cffunction name="napASecond">
	<cfargument name="index">
	<cfthread index="#index#" action="run" name="t#index#">
		<cfset thread.start=now()>
		<cfset sleep(1000+(index*10))>
		<cfset thread.end=now()>
	</cfthread>	
</cffunction>

<cfset start=getTickCount()>

<cfloop from="1" to="5" index="index">
	<cfset napASecond(index)>
</cfloop>

<!--- show threads --->
<cfdump var="#cfthread#" expand="false">

<!--- wait for all threads to finish --->
<cfthread action="join" name="t1,t2,t3">

<!--- show threads --->
<cfdump var="#cfthread#" expand="false">

<cfdump var="done in #getTickCount()-start#ms">
