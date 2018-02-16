component {
 
	// instance constructor body
	dump("this is executed every time a new instance is created");

	// static constructor body
	static {
		dump("this is executed only if the component is loaded for the first time");
	}
}