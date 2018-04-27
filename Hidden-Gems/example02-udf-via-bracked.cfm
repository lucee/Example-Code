<cfscript>
// variables via dot and bracked notation

// UDF call via dot notation
test=new Test();
dump( test.getName() );


// dynamic function name
funcName="getName";
dump(evaluate('test.#funcName#()'));


// UDF call via bracked notation
funcName="getName";
dump( test[funcName]() );

</cfscript>