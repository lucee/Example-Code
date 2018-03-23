<cfscript>

// file path
file=getDirectoryFromPath(getCurrentTemplatePath())&"test.txt";
fileWrite(file,'0');
	


function test(index) {
	thread file=file  {
		lock name=file {
			var nbr=fileRead(file);
			fileWrite(file,++nbr);
			sleep(10);
			nbr2=fileRead(file);
			systemOutput( nbr==nbr2 ? "fine!" : "something wrong here!" , true);
		}
	}
}


systemOutput("xxxxxxxxxxxxxxxxxxxxxxxxxx",true);
loop from=1 to=5 index="i" {
	test(i);
}
dump("done!");


</cfscript>
