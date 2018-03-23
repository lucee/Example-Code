<cfscript>

query datasource="test" name="qry" {
	echo("select '' as empty,null as _null");
}

dump(qry);
dump(qry._null);

</cfscript>
