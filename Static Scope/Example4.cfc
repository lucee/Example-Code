component {

	// static constructor body
	static {
		static.counter=0;
	}
	static.counter++;

	dump(static.counter&" instances used so far");
}