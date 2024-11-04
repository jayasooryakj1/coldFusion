<cfcomponent>
    <cffunction  name="fn_result" returnType="any">
    <cfargument name="search" type="any" required="true">
    <cfset sentence = "the quick brown fox jumps over the lazy dog">
    <cfset local.value=arguments.search>
        <cfset result = ListValueCount(sentence, local.value, " ")>
    <cfreturn result>
    </cffunction>
</cfcomponent>