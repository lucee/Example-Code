
<cfscript>
include "_getPath2BigFile.cfm";

// now we loop over every single line
loop file=path item="line" {
	handle(line);
}

function handle(line) {}

</cfscript>