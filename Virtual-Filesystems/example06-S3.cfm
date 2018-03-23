<cfscript>
/*
in Applicatiin.cfc
	this.s3.accessKeyId = "...";
	this.s3.awsSecretKey = "...";
	request.s3=this.s3;

*/

sct.s3 = "s3://#request.s3.accessKeyId#:#request.s3.awsSecretKey#@/";
sct.s3 = "s3:///";
dump(sct);


dir=directoryList(sct.s3);
dump(dir);

dir=directoryList(sct.s3&"testcaseS3/");
dump(dir);

dir=directoryList(sct.s3&"testcaseS3/a");
dump(dir);

c=fileRead(sct.s3&"testcaseS3/a/foo.txt");
dump(c);
/**/

</cfscript>