<cfcomponent>
    <cffunction  name = "divThree" returnType = "string">
    <cfargument name = "number" type="any" required = "true">
    <cfset result = "">
    <cfloop list = "#arguments.number#" item = "item">
        <cfif item%3 != 0>
                <cfcontinue>
        </cfif>
        <cfset #result# = listAppend(#result#, item)>
    </cfloop>
    <cfreturn result>
    </cffunction>
</cfcomponent>