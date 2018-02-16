component {

	/**
	* static function that only creates a single instance of the component
	*/
	public static function getInstance() {
		if(isNull(static.instance)) {
			static.instance=new Example1();
		}
		return static.instance; 
	}

	/**
	* constructor of the component
	*/
	private function init() {
		dump("create an instance of "&listLast(getCurrentTemplatePath(),'\/'));
	}

	/**
	* say hey 
	*/
	public function hey() {
		dump("Salve!");
	}
}