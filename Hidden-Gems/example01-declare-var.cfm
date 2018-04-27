<cfscript>

	function test() {
		var qry;
		dump(qry);
		query name="qry" datasource="test" {
			echo("select 1 as one");
		}
		dump(qry);

	}
	test();

</cfscript>