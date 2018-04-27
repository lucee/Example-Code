
<!------>
<cffunction name="test" output="false">
	<cfdump label="function" var="#now()#">
	<cfabort>
</cffunction>
<cfset test()>


<cfsilent>
	<cfdump label="silent" var="#now()#">
	<cfabort>
</cfsilent>