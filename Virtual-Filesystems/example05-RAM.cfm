<cfscript>

sct.ram="ram://"

dump(sct);

dump(directoryList(sct.ram));

directoryCreate(sct.ram&"/heidi2/")
fileWrite(sct.ram&"/susi2.txt","Sorglos");
dump(directoryList(sct.ram));

// every context has it's own ram resource


</cfscript>