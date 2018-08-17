
<cfscript>

query name="qry" datasource="test" {
	echo("
		select lastname,firstname from person
	");
}
dump(qry);
</cfscript>