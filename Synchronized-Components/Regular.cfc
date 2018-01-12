component {
	function test(i) {
		variables.id=i;
		local.id=i;
		
		sleep(100);
		
		if(local.id!=variables.id) systemOutput("ups!!!: "&local.id&":"&variables.id,true);
		else systemOutput("fine!!!: "&local.id,true);
	}
}