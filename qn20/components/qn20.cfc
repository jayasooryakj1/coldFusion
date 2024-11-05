<cfcomponent>
    <cffunction  name="fn_result" returnType="any">
        <cfargument  captchaInput="captchaInput" type="any">
        <cfargument  email="email" type="any">
        <cfif local.captchText==local.captcha.input && reFind("^[a-z0-9]+@[a-z]+\.[a-z]", local.email)>
        </cfif>
    </cffunction>
</cfcomponent>
