<cffunction name="splitString" returnType="struct">
    <cfargument name="file">
    <cffile action="read" file="#arguments.file#" variable="text">
    <cfset local.count = 0>
    <cfset local.struct = structNew()>
    <cfloop list="#text#" item="i" delimiters=" .">
        <cfset local.count = local.count + 1>
        <cfset local.struct[i] = local.count>
    </cfloop>
    <cfloop collection="#local.struct#" item="item">
        <cfquery name="query" datasource = "myData">
            insert into SplitWordFile values('#item#');
        </cfquery>
    </cfloop>
    <cfreturn local.struct>
</cffunction>