<cfcomponent>
    <cffunction  name="fn_result" returnType="string">
        <cfargument  name="captchaInput" type="any">
        <cfargument  name="email" type="any">
        <cfargument  name="captchaText" type="any">
        <cfif arguments.captchaText==arguments.captchaInput && reFind("^[a-z0-9]+@[a-z]+\.[a-z]", arguments.email)>
            <cfset local.result = 1>
        <cfelse>
            <cfset local.result = 0>
        </cfif>
        <cfreturn local.result>
    </cffunction>
</cfcomponent>
