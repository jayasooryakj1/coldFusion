<cfcomponent>
    <cffunction  name="structFunction" returnType="any">
        <cfif structKeyExists(session, "keyValue")>
        <cfelse>
            <cfset session.keyValue = structNew()>
        </cfif>
        <cfif structKeyExists(session.keyValue, form.key)>
            <cfset local.result = "Key already exists">
        <cfelse>
            <cfset session.keyValue[form.key] = form.value>
            <cfset local.result = session.keyValue>
        </cfif>
        <cfreturn local.result>
    </cffunction>
</cfcomponent>
