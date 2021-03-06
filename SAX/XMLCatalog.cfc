component {

	/**
	* start parsing a xml File
	* @param xmlFile xml File to parse
	*/
	function init(string xmlFile) {
		variables.xmlFile=arguments.xmlFile;
	}

	function execute() {
		variables.cds=[];
		variables.cd={};
		variables.insideCD=false;
		variables.currentName="";

		
		var xmlEventParser=createObject("java","lucee.runtime.helpers.XMLEventParser");
		xmlEventParser.init(
			getPageContext(),
			this.startDocument,
			this.startElement,
			this.body,
			this.endElement,
			this.endDocument,
			this.error
		);
		xmlEventParser.start(xmlFile);
		return variables.cds;
	}

	/**
	* this function will be called on start parsing a XML Element (Tag)
	*/
	public void function startElement(string uri, string localName, string qName, struct attributes) {
		if(qName == "cd") {
			variables.cd={};
			variables.insideCD=true;
		}
		else if(variables.insideCD) {
			variables.currentName=qName;
		}
	}

	/**
	* call with body of content
	*/
	public void function body(string content) {
		if(len(variables.currentName)) {
		//if(len(variables.currentName) && variables.currentName!="price") {
			variables.cd[variables.currentName]=content;
		}
	}

	/**
	* this function will be called on end parsing a XML Element (Tag)
	*/
	public void function endElement(string uri, string localName, string qName, struct attributes) {
		if(qName == "cd") {
			arrayAppend(variables.cds,variables.cd);
			variables.insideCD=false;
		}
		variables.currentName="";
	}

	/**
	* this function will be called on start parsing document
	*/
	public void function startDocument() {}

	/**
	* this function will be called on end parsing document
	*/
	public void function endDocument() {}

	/**
	* this function will be called wgen a error occur
	*/
	public void function error(struct cfcatch) {
		echo(cfcatch);
	}

}