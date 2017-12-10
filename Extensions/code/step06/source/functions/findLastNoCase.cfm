<cfscript>
/**
* Returns the index within this String of the last occurrence of the specified substring. The String is searched backwards starting at the last character.
* @needle string to search
* @haystack string to search
* @return This method returns 0 if the index is not found.
*/
function findLastNoCase(required string needle, required string haystack) {
    local.index=findNoCase(reverse(needle),reverse(haystack));
    if(index==0) return 0;
    return (stringlen(haystack)-(index+stringlen(needle)))+2;
}
</cfscript>