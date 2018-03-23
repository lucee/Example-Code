<cfscript>
sct1={};
sct2={};

// output null returned by a method
dump(sct2.putAll(sct1));


// assign null to a variable
res=sct2.putAll(sct1);
dump(res);

</cfscript>
