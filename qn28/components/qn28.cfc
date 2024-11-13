<cfcomponent>

    <cffunction  name="insertUser" returType="string">
        <cfargument  name="userName" type="string">
        <cfargument  name="password" type="string">
        <cfargument  name="role" type="string">
        <cfset local.hashedPassword = hash("#arguments.password#", "SHA-256", "UTF-8")>
        <cfquery name="query">
            select count(username) as count from users where username='#arguments.userName#'
        </cfquery>
        <cfif query.count GT 0>
            <cfset local.result = "user name already exists">
        <cfelse>
            <cfquery name="data">
                insert into users (username, pwd, roleId) values('#arguments.userName#', '#local.hashedPassword#', '#arguments.role#')
                <cfset local.result = "User added">
            </cfquery>
        </cfif>
        <cfreturn local.result>
    </cffunction>

    <cffunction  name="check" returnType="string">
        <cfargument  name="userName" type="string">
        <cfargument  name="password" type="string">
        <cfset local.hashedInput = hash("#arguments.password#", "SHA-256", "UTF-8")>
        <cfquery name="query">
            select count(username) as count from users where username='#arguments.userName#'
        </cfquery>
        <cfif query.count EQ 0>
            <cfset local.result = "Invalid username">
        <cfelse>
            <cfquery name="queryOutput">
                select pwd as pass from users where username='#arguments.userName#' 
            </cfquery>
            <cfif queryOutput.pass != #local.hashedInput#>
                <cfset local.result = "Incorrect password">
            <cfelse>
                <cfquery name="userType">
                    select userid, roleId as role from users where username='#arguments.userName#'
                </cfquery>
                <cfif userType.role=="User">
                    <cfset session.userId = userType.userid>
                    <cfset local.result = "User">
                <cfelse>
                    <cfset session.adminId = userType.userid>
                    <cfset local.result = "Admin">
                </cfif>
            </cfif>
        </cfif>
        <cfreturn local.result>
    </cffunction>

    <cffunction  name="pageList" returnType="query">
        <cfquery name="users">
            select pageId, pageName, pageDesc, _createdBy, _updatedBy, _createdOn, _updatedOn from pagesTable p, users u where p._createdBy = u.userId
        </cfquery>
        <cfreturn "#users#">
    </cffunction>

    <cffunction  name="displayPages">
        <cfquery name="page">
            select pageid, pagename, pagedesc from pageTables
        </cfquery>
        <cfset session.page = page>
        <cfreturn page>
    </cffunction>

    <cffunction  name="dltFunction">
        <cfargument  name="dlt">
        <cfquery name="dltQuery">
            delete from pageTable where pageid = #arguments.dlt#
        </cfquery>
        <cflocation  url="admin.cfm">
    </cffunction>

    <cffunction  name="editFunction">
        <cfargument  name="pagename">
        <cfargument  name="pagedesc">
        <cfquery name="editQuery">
            update pageTable set pagename='#arguments.pagename#', pagedesc='#arguments.pagedesc#' where pageid=#session.editId#
        </cfquery>
        <cflocation  url="admin.cfm">
    </cffunction>

    <cffunction  name="addFunction">
        <cfargument  name="pagename">
        <cfargument  name="pagedesc">
        <cfquery name="addQuery">
            insert into pageTable values ('#arguments.pagename#', '#arguments.pagedesc#')
        </cfquery>
        <cflocation  url="admin.cfm">
    </cffunction>

    <cffunction  name="logoutFunction">
        <cfset sessionInvalidate()>
        <cflocation  url="index.cfm">
    </cffunction>

</cfcomponent>