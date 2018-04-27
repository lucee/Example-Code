component {

	this.Name = "Lucee Mail";


	this.mail.listener=function() {
		systemOutput('--------------- function defined in Application.cfc ---------------',1,1);
		systemOutput(arguments.keyList(),1,1);
		systemOutput(detail,1,1);
	};
}