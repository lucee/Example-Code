

<cfquery name="qry" datasource="test" params="#{title:{type:'varchar',value:'Susi'}}#">
	select * from Foo1890
	where title=:title
</cfquery>
<cfdump var="#qry#" expand="false">


<cfscript>
	
	// CFML Advisory Board (Adobe,Bluedragon,Railo) Syntax
	query name="qry" datasource="test" params={title:{type:'varchar',value:'Susi'}} {
		echo("
			select * from Foo1890
			where title=:title
		");
	}
	dump(qry);

	// ACF Syntax
	cfquery(name="qry",datasource="test",params={title:{type:'varchar',value:'Susi'}}) {
		echo("
			select * from Foo1890
			where title=:title
		");
	}
	dump(qry);

</cfscript>