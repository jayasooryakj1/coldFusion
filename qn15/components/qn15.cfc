<cfcomponent>
    <cffunction  name = "multiply" returnType="numeric">
        <cfargument  name = "num1" type = "numeric" required = "true" default = "1">
        <cfargument  name = "num2" type = "numeric" required = "true" default = "1">
        <cfargument  name = "num3" type = "numeric" required = "true" default = "1">
        <cfargument  name = "num4" type = "numeric" required = "true" default = "1">
        <cfset local.result = arguments.num1 * arguments.num2 * arguments.num3 * arguments.num4>
        <cfreturn local.result>
    </cffunction>
</cfcomponent>