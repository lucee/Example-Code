<cfscript>
sct.ftp="ftp://#request.ftp.user#:#request.ftp.pass#@ftp53.world4you.com:21/";
dump(sct);

dir=hidePW(directoryList(sct.ftp));
dump(dir);





function  hidePW(arr) localmode=true {
	loop array=arr index="i" item="v" {
		v=replace(v,request.ftp.user,'{user}');
		v=replace(v,request.ftp.pass,'{pass}');
		arr[i]=v;
	}
	return arr;
}
</cfscript>