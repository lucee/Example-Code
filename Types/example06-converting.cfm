<cfscript>

// convert string to date
d=dateAdd("d",0,"12/1/2018");
dump(d);

// convert date to number
n=d+1;
dump(n);

// convert number to date
d=dateAdd("d",0,n);
dump(d);

sb=createObject("java","java.lang.StringBuilder").init("Susi Sorglos");
dump(sb);
dump(sb.substring("5"));
dump(sb.substring(JavaCast("int","5")));

//sb=createObject("java","java.lang.StringBuilder").init("1");
sb=createObject("java","java.lang.StringBuilder").init(javaCast("int","1"));
dump(sb);
</cfscript>