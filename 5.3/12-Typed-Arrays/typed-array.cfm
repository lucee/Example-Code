<cfscript>
	
	arr=[];//arrayNew();
	arr[1]=1;
	arr.append({a:1});
	dump(arr);
	
	arr=arrayNew(type:"boolean");
	arr[1]=1;
	arr.append({a:1});
	dump(arr);

	// problem with ACF Syntax 
	// arrayNew["string"](1);
</cfscript>