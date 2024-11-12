<cfcomponent>
    <cffunction  name="structFunction" returnType="any">
        <cfif structKeyExists(session, "keyValue")>
        <cfelse>
            <cfset session.keyValue = structNew()>
        </cfif>
            <cfset session.keyValue[form.key] = form.value>
            <cfset local.result = session.keyValue>
        <cfreturn local.result>
    </cffunction>
</cfcomponent>