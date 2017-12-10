Step 7 <cfoutput>#now()#</cfoutput>

<cfquery datasource="mydb" name="qry">
	SELECT * FROM INFORMATION_SCHEMA.SYSTEM_USERS
</cfquery>
<cfdump var="#qry#">

<!--- BIF and BIT --->
<cfdump eval="find('fliegen','Wenn vor Fliegen Fliegen fliegen, fliegen Fliegen Fliegen nach.')">
<cfdump eval="findNoCase('fliegen','Wenn vor Fliegen Fliegen fliegen, fliegen Fliegen Fliegen nach.')">
<cfdump eval="findLast('fliegen','Wenn vor Fliegen Fliegen fliegen, fliegen Fliegen Fliegen nach.')">
<cfdump eval="findLastNoCase('fliegen','Wenn vor Fliegen Fliegen fliegen, fliegen Fliegen Fliegen nach.')">

<!--- Component --->
<cfscript>
	string=new String();
	dump(var:string,label:"Component");
	dump(var:string.findLast('fliegen','Wenn vor Fliegen Fliegen fliegen, fliegen Fliegen Fliegen nach.'),label:'findLast');
</cfscript>