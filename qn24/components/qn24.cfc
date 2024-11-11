<cfcomponent>

    <cffunction  name="verifyEmail" access="remote" returnType="any">
        <cfargument  name="email" type="string">
        <cfquery datasource="dataSource1" name="query">
            select count('emailId') as count from emailVerification where emailId = '#arguments.email#';
        </cfquery>
        <cfif query.count>
            <cfreturn true>
        </cfif>
    </cffunction>

    <cffunction  name="detailsEntry">
        <cfargument  name="firstName">
        <cfargument  name="email">
        <cfquery datasource="myData" name="query">
            insert into emailVerification values('#arguments.firstName#','#arguments.email#');
        </cfquery>
    </cffunction>


</cfcomponent>