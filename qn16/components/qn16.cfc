<cffunction  name = "func" returnType="string">
    <cfset res = " ">
    <cfloop index = "i" from = 1 to = 3>
        <cfset res = res & i &" ">
        <cfloop index = "j" from = 1 to = 2>
                <cfset res = res & (j*3)+i & " ">
        </cfloop>
        <cfset res = res & "<br>">
    </cfloop>
    <cfreturn res>
</cffunction>