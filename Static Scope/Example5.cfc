component {

	static{
		static.HOST="lucee.org";
		static.PORT=8080;
	}

	/**
	* splits a full name in half
	*/
	public static function splitFullName(required string fullName) {
		var arr=listToArray(fullName," 	");
		return {'lastname':arr[1],'firstname':arr[2]};
	}

	public function init(required string fullname) {
		variables.fullname=static.splitFullName(fullName);
	}

	public string function getLastName() {
		return variables.fullname.lastname;
	}
}