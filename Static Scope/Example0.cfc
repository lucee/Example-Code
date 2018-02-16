component {


	/**
	* constructor of the component
	*/
	public function init() {
		dump("create an instance of "&listLast(getCurrentTemplatePath(),'\/'));
	}

	/**
	* say hey
	*/
	public function hey() {
		dump("Salve!");
	}
}