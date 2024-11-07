<cfcomponent>
    <cffunction  name="thumbnailFunction" returnType="struct">
        <cfargument  name="name" type="any" required="true">
        <cfargument  name="desc" type="any" required="true">
        <cfargument  name="thumbnail" type="any" required="true">
        <cfset local.result["name"] = arguments.name>
        <cfset local.result["desc"] = arguments.desc>
        <cfset local.result["thumbnail"] = arguments.thumbnail>
        <cfreturn local.result>
    </cffunction>
</cfcomponent>