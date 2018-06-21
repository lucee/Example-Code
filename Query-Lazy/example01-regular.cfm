<cfscript>



query name="qry"  returntype="query" {
	echo("select * from lazyQuery");
}
dump(numberFormat(qry.getColumnCount()*qry.getRowCount()));

loop query=qry {
	dump(qry.val);
	if(qry.currentrow==10) break;
}






</cfscript>