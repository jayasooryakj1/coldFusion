<cfcomponent>
    <cffunction  name = "printNumber" returnType = "array">
    <cfargument name = "number" type ="any" required = "true">
    <cfset result = []>
        <cfloop index = "i" from = 1 to = #number#>
            <cfif #i# % 2 == 0>
                <cfset result[i] = "green">
            <cfelse>
                <cfset result[i] = "blue">
            </cfif>
        </cfloop>
    <cfreturn result>
    </cffunction>
</cfcomponent>