<cfscript>

sct.bol=true;
sct.str="String";
sct.nbr=123.456;

dump(sct);

dump(sct.nbr+100);
if(sct.bol)dump("is true");

dump(serializeJson(sct));

</cfscript>