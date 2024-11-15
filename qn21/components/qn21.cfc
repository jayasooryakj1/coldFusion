<cfcomponent>
    <cffunction  name="bdayFunction" returnType="string">
        <cfargument  name="bday" type="any" required="true">
        <cfset local.sender = "abc@gmail.com">
        <cfmail  from="#local.sender#"  subject="happy Birthday #arguments.bday[name]#"  to="#arguments.bday[email]#">
            #arguments.bday[wish]#
            <cfimage action="writeToBrowser" source="#arguments.bday[bdImg]#">
        </cfmail>
        <cfset local.result = "mail sent successfully">
        <cfreturn "#local.result#">
    </cffunction>
</cfcomponent>