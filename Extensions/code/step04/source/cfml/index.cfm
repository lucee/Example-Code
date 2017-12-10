Step 4 <cfoutput>#now()#</cfoutput>

<cfquery datasource="mydb" name="qry">
	SELECT * FROM INFORMATION_SCHEMA.SYSTEM_USERS
</cfquery>
<cfdump var="#qry#">