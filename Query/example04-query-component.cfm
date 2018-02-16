
<cfscript>
	query=new Query(sql:"select * from Foo1890 where title=?");
	query.setParams([{type:'varchar',value:'Susi'}]);
	query.setDatasource('test');

	dump(query.execute().getResult());
</cfscript>