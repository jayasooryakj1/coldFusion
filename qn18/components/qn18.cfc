<cfcomponent>
    <cffunction  name="query" returnType="query">
        <cfset user = queryNew("id,name,email", "integer,varchar,varchar")>
        <cfset queryAddRow(user)>
        <cfset querySetCell(user, "id", "1")>
        <cfset querySetCell(user, "name", "Abhijith Naiju")>
        <cfset querySetCell(user, "email", "abhijith.naiju@gmail.com")>
        <cfset queryAddRow(user)>
        <cfset querySetCell(user, "id", "2")>
        <cfset querySetCell(user, "name", "Jibin Varghese")>
        <cfset querySetCell(user, "email", "jibin.varghese@gmail.com")>
        <cfset queryAddRow(user)>
        <cfset querySetCell(user, "id", "3")>
        <cfset querySetCell(user, "name", "Dinil Thomas")>
        <cfset querySetCell(user, "email", "dinil.thomas@gmail.com")>
        <cfreturn user>
    </cffunction>
</cfcomponent>