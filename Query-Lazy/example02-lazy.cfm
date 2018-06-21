<cfscript>



query name="qry"  returntype="query" lazy=true {
	echo("select * from lazyQuery");
}

loop query=qry {
	dump(qry.val);
	if(qry.currentrow==10) break;
}








</cfscript>