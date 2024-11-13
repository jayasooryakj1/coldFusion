<cfcomponent>
    <cffunction  name="query" returnType="query">
        <cfargument  name="number" type="any" required="true">
        <cfquery name="users" dataSource="dataSource1">
            select * from users
        </cfquery>
        <cfreturn "#users#">
    </cffunction>
</cfcomponent>