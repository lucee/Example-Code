<cfscript>
	key=generateRSAKeys();
	raw="Susi Sorglos föhnte Ihr Haar";
	enc=encrypt(raw,key.private,"rsa");
	dec=decrypt(enc,key.public,"rsa");
	dump(dec);
</cfscript>