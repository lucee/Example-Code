<cfscript>
max=1000;

persons=query(
	"lastname":["Lebowski","Lebowski","Lebowski","Sobchak"],
	"firstname":["Jeffrey","Bunny","Maude","Walter"]
	);


// Query of Query
start=getTickCount("micro");
loop times=max {
	query dbtype="query" name="qoq" {echo("
		select * from persons
		where lastname='Lebowski'
		and firstname='Bunny'
		order by lastname 
	");}
}
dump("Query of Query Execution Time:"&(getTickCount("micro")-start));	


// Query Filter/Sort
start=getTickCount("micro");
loop times=max {
	qf=queryFilter(persons,function (row,cr,qry) {return row.firstname=='Bunny' && row.lastname=='Lebowski';});
	qs=querySort(qf,"lastname");
}
dump("Query Filter/Sort Execution Time:"&(getTickCount("micro")-start));

</cfscript>