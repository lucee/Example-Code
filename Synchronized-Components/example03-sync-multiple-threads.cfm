<cfscript>
s=new Sync();


loop from=1 to=10 index="i" {
	thread i=i {
		s.test(i);
	}
	
}
</cfscript>
