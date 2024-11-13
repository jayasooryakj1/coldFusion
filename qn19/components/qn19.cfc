<cfcomponent>
    <cffunction  name="counter" returnType="numeric">
        <cfif not structKeyExists(cookie, "VisitsCounter")>
            <cfcookie  name = "VisitsCounter">
            <cfset cookie.VisitsCounter = 0>
        </cfif>
        <cfset cookie.VisitsCounter = VisitsCounter+1>
        <cfreturn cookie.VisitsCounter>
    </cffunction>
</cfcomponent>