component {
 
	/**
	* static function that only creates a single instance of the component
	* @lastname last name of the person
	* @firstname last name of the person
	*/
	public static function getInstance(required string lastname, required string firstname) {
		var id=hash(lastname&":"&firstname,"quick");
		if(isNull(static.instance[id])) {
			static.instance[id]=new Example2(lastname,firstname);
		}
		return static.instance[id];
	}

	/**
	* constructor of the component
	*/
	private function init(required string lastname, required string firstname) {
		dump("create an instance of "&listLast(getCurrentTemplatePath(),'\/')&" for "&lastname&" "&firstname);
		variables.lastname=arguments.lastname;
		variables.firstname=arguments.firstname;
	}

	/**
	* say hey
	*/
	public function hey() {
		dump("Salve #variables.firstname#!");
	}
}