
<cfquery name="qry" datasource="test">
	select * from Foo1890
</cfquery>
<cfdump var="#qry#" expand="false">

<cfquery name="qry" datasource="test">
	select * from Foo1890
	where title=<cfqueryparam sqltype="varchar" value="Susi">
</cfquery>
<cfdump var="#qry#" expand="false">

<cfquery name="qry" datasource="test" params="#{title:'Susi'}#">
	select * from Foo1890
	where title=:title
</cfquery>
<cfdump var="#qry#" expand="false">

<cfquery name="qry" datasource="test" params="#{title:{type:'varchar',value:'Susi'}}#">
	select * from Foo1890
	where title=:title
</cfquery>
<cfdump var="#qry#" expand="false">

<cfquery name="qry" datasource="test" params="#['Susi']#">
	select * from Foo1890
	where title=?
</cfquery>
<cfdump var="#qry#" expand="false">
<cfquery name="qry" datasource="test" params="#[{type:'varchar',value:'Susi'}]#">
	select * from Foo1890
	where title=?
</cfquery>
<cfdump var="#qry#" expand="false">
<!------>

