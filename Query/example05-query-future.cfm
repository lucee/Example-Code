
<cfscript>

	// Shorter echo/writeoutput
	query name="qry" datasource="test" params={title:{type:'varchar',value:'Susi'}} {
		$("
			select * from Foo1890
			where title=:title
		");
	}
	dump(qry);

	$("HI THERE");

	// Component gets more static functions
	q=Query::new("a,b,c");	// equal to queryNew("a,b,c"), already exists
	Query::execute(...);	// equal to queryExecute()


	// Query Builder (creates SQL in dialect based on the datasource defined)
	qb=new QueryBuilder("test")
		.select("lastName")
		.from("person")
		.where(QB::eq("firstname","Susi"));
	qb.execute();
	dump(res);

	// change select
	qb.select(["age","firstname"]);
	qb.execute();
	dump(res);

	// change where
	qb.clear("where");
	qb.where(
		QB::and(
			QB::eq("firstname","Susi"),
			QB::neq("lastname","Moser"),
			QB::lt("age",18)
		)
	);
	qb.execute();
	dump(res);



</cfscript>