
<cfscript>

query name="sct" datasource="test" returntype="struct" columnKey="lastname" {
	echo("
		select lastname,firstname from person
	");
}
dump(sct);

</cfscript>