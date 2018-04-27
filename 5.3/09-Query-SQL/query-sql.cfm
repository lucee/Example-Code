<cfquery name="qry">
	select 1 as one
</cfquery>
<cfdump var="#qry#">


<cfquery name="qry" sql="select 1 as one"/>
<cfdump var="#qry#">


<cfscript>
	query name="qry" sql="select 1 as one";
	dump(qry);

	sql="select 1 as one";
	cfquery(name="qry", sql=sql);
	dump(qry);
</cfscript>
<!------>