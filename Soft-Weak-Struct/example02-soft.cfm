<cfsetting requesttimeout="1000">
<cfscript>

sct=structNew("soft");
i=0;
str=createLongString(); // this string is not internal
start=getTickCount();
while(i++<10000) {
	sct[i]=i&str;
}
dump("count:"&structCount(sct)&";time:"&(getTickCount()-start));



/**
* creates a long string
*/
function createLongString() {
	var str="";
	for(var i=0;i<10000;i++) {
		str&="ljlnohjho uhkhikhgi uhiuhihihiug uu ighighoihpi hio uz678678t87t78gugug    hihihihiohgiughiughihighi hjgghjkgihiuziz778gughjhk  oi ihighibug";
	}
	return str;
}


</cfscript>
