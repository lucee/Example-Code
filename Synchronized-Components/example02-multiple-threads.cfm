<cfscript>
r=new Regular();


loop from=1 to=10 index="i" {
	thread i=i {
		r.test(i);
	}
	
}


</cfscript>
