<cfcomponent>
    <cffunction  name="insertUser" returType="string">
        <cfargument  name="userName" type="string">
        <cfargument  name="password" type="string">
        <cfargument  name="role" type="string">
        <cfquery datasource="datasource1" name="query">
            select count(username) as count from users where username='#arguments.userName#'
        </cfquery>
        <cfif query.count GT 0>
            <cfset local.result = "user name already exists">
        <cfelse>
            <cfquery datasource="datasource1" name="data">
                insert into users (username, pwd, role) values('#arguments.userName#', '#arguments.password#', '#arguments.role#')
                <cfset local.result = "User added">
            </cfquery>
        </cfif>
        <cfreturn local.result>
    </cffunction>

    <cffunction  name="check" returnType="string">
        <cfargument  name="userName" type="string">
        <cfargument  name="password" type="string">
        <cfquery datasource="datasource1" name="query">
            select count(username) as count from users where username='#arguments.userName#'
        </cfquery>
        <cfif query.count EQ 0>
            <cfset local.result = "Invalid username">
        <cfelse>
            <cfquery datasource="datasource1" name="queryOutput">
                select pwd as pass from users where username='#arguments.userName#' 
            </cfquery>
            <cfif queryOutput.pass != #arguments.password#>
                <cfset local.result = "Incorrect password">
            <cfelse>
                <cfquery datasource="datasource1" name="userType">
                    select role as role from users where username='#arguments.userName#'
                </cfquery>
                <cfif userType.role=="User">
                    <cfset local.result = "User">
                <cfelse>
                    <cfset local.result = "Admin">
                </cfif>
            </cfif>
        </cfif>
        <cfreturn local.result>
    </cffunction>

    <cffunction  name="pageList" returnType="query">
        <cfquery name="users" dataSource="dataSource1">
            select * from pageTable
        </cfquery>
        <cfreturn "#users#">
    </cffunction>

    <cffunction  name="displayPages">
        <cfquery datasource="datasource1" name="page">
            select pageid, pagename, pagedesc from pageTables
        </cfquery>
        <cfset session.page = page>
        <cfreturn page>
    </cffunction>

    <cffunction  name="dltFunction">
        <cfargument  name="dlt">
        <cfquery datasource="dataSource1" name="dltQuery">
            delete from pageTable where pageid = #arguments.dlt#
        </cfquery>
    </cffunction>

    <cffunction  name="editFunction">
        <cfargument  name="editId">
        <cfargument  name="pagename">
        <cfargument  name="pagedesc">
        <cfdump  var="#arguments.editId#">
        <cfquery datasource="dataSource1" name="editQuery">
            update pageTable set pagename='#arguments.pagename#', pagedesc='#arguments.pagedesc#' where pageid="#arguments.editId#"
        </cfquery>
    </cffunction>
</cfcomponent>