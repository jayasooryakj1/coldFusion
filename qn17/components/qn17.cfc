<cfcomponent>
    <cffunction  name="fn_result" returnType="any">
    <cfargument name="number" type="any" required="true">
    <cfset result = []>
        <cfloop index="i" from=1 to=#number#>
            <cfif #i#%2==0>
                <cfset result[i] = "green">
            <cfelse>
                <cfset result[i] = "blue">
            </cfif>
        </cfloop>
<!---         <cfdump  var="#result#"> --->
    <cfreturn result>
    </cffunction>
</cfcomponent>