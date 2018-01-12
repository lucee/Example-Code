<cfscript>

sct=structNew();
sct['one']="One";
sct['two']="Two";
sct['three']="Three";
dump(sct);

sct={
	'one':"One"
	,'two':"Two"
	,'three':"Three"

};
dump(sct);

</cfscript>