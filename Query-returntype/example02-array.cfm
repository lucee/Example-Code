
<cfscript>

query name="arr" datasource="test" returntype="array" {
	echo("
		select lastname,firstname from person
	");
}
dump(arr);
</cfscript>