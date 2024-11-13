<cfcomponent>
    <cffunction  name = "divThree" returnType = "string">
        <cfargument name = "number" type="any" required = "true">
        <cfset local.result = "">
        <cfloop list = "#arguments.number#" item = "item">
            <cfif item%3 != 0>
                    <cfcontinue>
            </cfif>
            <cfset #local.result# = listAppend(#local.result#, item)>
        </cfloop>
        <cfreturn local.result>
    </cffunction>
</cfcomponent>