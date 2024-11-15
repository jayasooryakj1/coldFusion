<cfcomponent>
    <cfset  this.sessionmanagement="true">
    <cfset this.datasource = "dataSource1">

    <cffunction name="onRequest" >
        <cfargument  name="requestedpage">
        <cfset local.excludedPages=["/task/qn28/index.cfm","/task/qn28/signUp.cfm"]>
        <cfif arrayFind(local.excludedPages,arguments.requestedpage)>
            <cfinclude  template="#arguments.requestedpage#">
        <cfelse>
            <cfif structKeyExists(session, "userId")>
                    <cfinclude  template="#arguments.requestedpage#">
            <cfelseif structKeyExists(session, "adminId")>
                <cfinclude  template="#arguments.requestedpage#">
            <cfelse>
                <cflocation  url="index.cfm">
            </cfif>
        </cfif>
    </cffunction>

</cfcomponent>