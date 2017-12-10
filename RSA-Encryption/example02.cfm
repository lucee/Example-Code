<cfscript>
	key=generateRSAKeys();
	raw="Susi Sorglos föhnte Ihr Haar";
	enc=encrypt(raw,key.private,"rsa");
	dump(enc);
</cfscript>