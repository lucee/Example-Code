
component restpath="/system"  rest="true" {

	remote struct function getOS() httpmethod="GET" restpath="os" {
		return server.os;

	}

	remote string function getTimeZone(
		required string key restargsource="Path",
		string locale="en_US" restargsource="url")
		
		httpmethod="GET" restpath="timezone/{key}" {
		
		setLocale(arguments.locale);
		var tzInfo=getTimeZoneInfo();

		return tzInfo[arguments.key];
	}
}