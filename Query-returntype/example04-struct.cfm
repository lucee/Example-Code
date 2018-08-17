
<cfscript>

if(isNull(application.sex)) {
	query name="application.sex" datasource="test" returntype="struct" columnKey="sex_id" {
		echo("
			select sex_id,name from sex
		");
	}
}

query name="qryPerson" datasource="test"  {
	echo("
		select sex_id,lastname,firstname from person
	");
}

loop query=qryPerson {
	dump(qryPerson.lastname&" "&qryPerson.firstname&" ("&application.sex[qryPerson.sex_id].name&")");
}
</cfscript>