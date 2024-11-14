<cfcomponent>
    <cffunction  name = "funcRating" returnType = "string">
        <cfargument name = "number" type = "any" required = "true">
        <cfswitch expression = #arguments.number#>
            <cfcase value = "1,2"><cfset local.result = "Ok"></cfcase>
            <cfcase value = 3><cfset local.result = "Fair"></cfcase>
            <cfcase value  = 4><cfset local.result = "Good"></cfcase>
            <cfcase value = 5><cfset local.result = "Very good"></cfcase>
            <cfdefaultcase><cfset local.result = "Enter a valid number(1-5)"></cfdefaultcase>
        </cfswitch>
        <cfreturn result>
    </cffunction>
</cfcomponent>