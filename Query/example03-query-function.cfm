
<cfscript>
	qry=queryExecute(
		sql:"select * from Foo1890 where title=:title"
		,options:{datasource="test"}
		,params={title:{type:'varchar',value:'Susi'}}
	);
	dump(qry);

</cfscript>