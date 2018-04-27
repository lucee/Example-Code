<cfscript>

dump(label:"URL",var:url);
dump(label:"Form",var:form);


// current name
curr=listLast(getCurrentTemplatePath(),'\/');
</cfscript>

<cfoutput>
<h1>Countries</h1>
<form method="post" action="#curr#?country[]=USA&country[]=UAE">
<pre>
Countries Europe:	<input type="text" name="country[]" value="Switzerland,France,Germany" size="30">
Countries America:	<input type="text" name="country[]" value="Canada,USA,Mexico" size="30">
<input type="submit" name="send" value="send">
</pre>
</form>
</cfoutput>
