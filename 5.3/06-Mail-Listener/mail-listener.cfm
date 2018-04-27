<cfmail subject="Test Mail Listener" from="lucee.testing@mail.com" to="michael@lucee.org">
	This mail was send to test the listener feature.
</cfmail>


<cfmail subject="Test Mail Listener" from="lucee.testing@mail.com" to="michael@lucee.org" listener="#function() {
	systemOutput('--------------- function defined with mail tag ---------------',true,true);
	systemOutput(arguments.keyList(),1,1);
	systemOutput(detail,1,1);

	}#">
	This mail was send to test the listener feature.
</cfmail>

DONE!