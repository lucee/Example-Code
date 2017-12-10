Step 6 <cfoutput>#now()#</cfoutput>

<cfquery datasource="mydb" name="qry">
	SELECT * FROM INFORMATION_SCHEMA.SYSTEM_USERS
</cfquery>
<cfdump var="#qry#">

<cfdump eval="find('fliegen','Wenn vor Fliegen Fliegen fliegen, fliegen Fliegen Fliegen nach.')">
<cfdump eval="findNoCase('fliegen','Wenn vor Fliegen Fliegen fliegen, fliegen Fliegen Fliegen nach.')">
<cfdump eval="findLast('fliegen','Wenn vor Fliegen Fliegen fliegen, fliegen Fliegen Fliegen nach.')">
<cfdump eval="findLastNoCase('fliegen','Wenn vor Fliegen Fliegen fliegen, fliegen Fliegen Fliegen nach.')">