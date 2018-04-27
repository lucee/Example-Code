<cfscript>
	log log="application" text="Something is rotten in the state of Denmark.";

	//throw "etwas ist faul im Staate Dänemark";

	query name="qry" datasource="test" {
		echo("select * from MyLog");
	}
	dump(qry);

</cfscript>