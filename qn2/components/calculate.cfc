<cfcomponent>
    <cffunction  name="fn_result" returnType="any">
    <cfargument name="number" type="numeric" required="true">
    <cfset local.value=arguments.number>
        <cfswitch expression>
        <cfcase value="value">
        </cfcase>
        </cfswitch>
    <cfreturn result>
    </cffunction>
</cfcomponent>