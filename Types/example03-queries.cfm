<cfscript>
query=queryNew(["name","age"],["string","numeric"]);

row=query.addRow();
query.name[row]="Susi";
query.age[row]=16;

row=query.addRow();
query.name[row]="Heidi";
query.age[row]=9;

query.sort("age");

dump(query);
dump(getMetaData(query));


row=query.addRow();
query.name[row]="Urs";
query.age[row]="old";


query.sort("age");
dump(query);
dump(getMetaData(query));
/**/



</cfscript>