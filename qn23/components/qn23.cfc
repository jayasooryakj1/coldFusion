<cfcomponent>
    <cffunction  name="fnUser" returntype="string">
        <cfargument  name="structUser" type="struct" required="true">
        
        <cfquery name="userDetail" datasource="dataSource1">
                insert into Qn23userDetails
                values ('#arguments.structUser["designation"]#',
                '#arguments.structUser["locateOption"]#',
                '#arguments.structUser["startDate"]#',
                '#arguments.structUser["webSite"]#',
                '#arguments.structUser["userResume"]#',
                '#arguments.structUser["salary"]#',
                '#arguments.structUser["fname"]#',
                '#arguments.structUser["lname"]#',
                '#arguments.structUser["userEmail"]#',
                '#arguments.structUser["phn"]#')
        </cfquery>

        <cfset local.result = "Data Stored successfully">
        <cfreturn local.result>
    </cffunction>
</cfcomponent>