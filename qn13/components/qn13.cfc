<cfcomponent>
    <cffunction  name="funCount" returnType="any">
    <cfargument name="search" type="any" required="true">
    <cfset local.sentence = "the quick brown fox jumps over the lazy dog">
    <cfset local.value = arguments.search>
        <cfset result = ListValueCount(local.sentence, local.value, " ")>
    <cfreturn result>
    </cffunction>
</cfcomponent>