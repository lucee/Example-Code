
<cfscript>
include "_getPath2BigFile.cfm";

NL="
";

// read the complete file into memory
content=fileRead(path);

// no we split, again everything lands in memory as an array
arr=listToArray(content,NL);

// now we loop over every single line
loop array=arr index="i" item="line" {
	handle(line);
}

function handle(line) {}

dump(label:"String Size",var:len(content));
dump(label:"Array Size",var:len(arr));

</cfscript>