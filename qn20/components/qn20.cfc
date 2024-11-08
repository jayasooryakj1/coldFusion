<cfcomponent>
    <cffunction  name="fn_result" returnType="any">
        <cfargument  name="captchaInput" type="any">
        <cfargument  name="email" type="any">
        <cfargument  name="captchaText" type="any">
        <cfif arguments.captchaText==arguments.captchaInput && reFind("^[a-z0-9]+@[a-z]+\.[a-z]", arguments.email)>
            <cfset result = 1>
        <cfelse>
            <cfset result = 0>
        </cfif>
        <cfreturn result>
    </cffunction>
</cfcomponent>
