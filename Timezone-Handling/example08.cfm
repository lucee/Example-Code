<cfquery datasource="test" name="qry">
	select #now()# as currTime
</cfquery>
<cfdump var="#qry#">