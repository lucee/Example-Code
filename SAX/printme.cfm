<cffile action="read" file="#getBaseTemplatePath()#" variable="src">
<cfoutput>
<h3 class="source">Source of #getBaseTemplatePath()#</h3>
<cfset vdummy=HTMLEditFormat(ReReplaceNoCase(src,'(<[/]*cf[^>]*>)','==b.=\1==/b.=','ALL'))>
<cfset vdummy=Replace(vdummy,'#chr(32)#','&nbsp;','ALL')>
<cfset vdummy=Replace(vdummy,'#chr(9)#','&nbsp;&nbsp;&nbsp;&nbsp;','ALL')>
<cfset vdummy=Replace(vdummy,'==','<','ALL')>
<cfset vdummy=Replace(vdummy,'.=','>','ALL')>
<cfset vdummy=Replace(vdummy,'#chr(13)#','<br/>','ALL')>
<div class="source"><pre>#vdummy#</pre></div>
</cfoutput>
