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
                    select userid, roleId from users where userName='#arguments.userName#'
                </cfquery>
                <cfif userType.roleId==3>
                    <cfset session.userId = userType.userid>
                    <cfset local.result = "User">
                <cfelseif userType.roleId==1|| userType.roleId==2>
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

    <cffunction  name="dltFunction" access="remote">
        <cfargument  name="dlt">
        <cfquery name="dltQuery">
            delete from pagesTable where pageid = '#arguments.dlt#'
        </cfquery>
        <cfreturn true>
    </cffunction>

    <cffunction  name="editFunction" access="remote">
        <cfargument  name="pagename">
        <cfargument  name="pagedesc">
        <cfquery name="countName">
            select count(pagename) as count from pagesTable where pagename='#arguments.pagename#'
        </cfquery>
        <cfquery name="pageId">
            select pageid from pagesTable where pagename='#arguments.pagename#'
        </cfquery>
        <cfif #countName.count# GT 0 and pageId.pageid != '#session.editId#'>
            <cfset local.result = 1>
        <cfelse>
            <cfset local.editDate = dateFormat(now(), 'dd/mm/yyyy')>
            <cfset local.editDateString = '#local.editDate#'>
            <cfquery name="editQuery">
                update pagesTable set pagename='#arguments.pagename#', pagedesc='#arguments.pagedesc#', _updatedOn='#local.editDate#' where pageid='#session.editId#'
            </cfquery>
            <cfset local.result = 2>
            <cflocation  url="admin.cfm">
        </cfif>
        <cfreturn local.result>
    </cffunction>

    <cffunction  name="addFunction">
        <cfargument  name="pagename">
        <cfargument  name="pagedesc">
        <cfset local.createdOn = dateFormat(now(),'dd/mm/yyyy')>
        <cfset local.updatedOn = dateFormat(now(),'dd/mm/yyyy')>
        <cfquery name="countName">
            select count(pagename) as count from pagesTable where pagename='#arguments.pagename#'
        </cfquery>
        <cfif countName.count GT 0>
            <cfset local.result = 0>
        <cfelse>
            <cfquery name="addQuery">
                insert into pagesTable (pageName, pageDesc, _createdBy, _updatedBy, _createdOn, _updatedOn) values ('#arguments.pagename#', '#arguments.pagedesc#', '#session.adminId#', '#session.adminId#', '#local.createdOn#', '#local.updatedOn#')
                <cfset local.result = 1>
            </cfquery>
        </cfif>
        <cfreturn local.result>
        <cflocation  url="admin.cfm">
    </cffunction>

    <cffunction  name="logoutFunction" access="remote">
        <cfset structClear(session)>
        <cfreturn true>
    </cffunction>

    <cffunction  name="findCreator">
        <cfargument  name="createdUser">
        <cfquery name="creator">
            select userName from users where userId='#arguments.createdUser#'
        </cfquery>
        <cfreturn #creator.userName#>
    </cffunction>
    
    <cffunction  name="findUpdate">
        <cfargument  name="updateUser">
        <cfquery name="updatedBy">
            select userName from users where userId='#arguments.updateUser#'
        </cfquery>
        <cfreturn #updatedBy.userName#>
    </cffunction>

</cfcomponent>