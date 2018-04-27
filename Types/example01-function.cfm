<cfscript>
	param application.names={};

	boolean function recExists(string name, number age) {
		var exists=application.names.keyExists(name);
		application.names[name]=age;
		dump(age);
		return exists;
	}
	dump(recExists("Susi","15"));


	void function test(array arr) {
		arr[2]="two";
	}
	arr={'1':'one'};
	test(arr);
	dump(arr);


</cfscript>