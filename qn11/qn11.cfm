<cfoutput>
<!DOCTYPE html>
<html lang="en">
<head>    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>qn11</title>
</head>
<body>
    
    <div>
        <cfset res = mulitiply(1,2)>
        <cfdump var="#res#">
        <cfset res = mulitiply(1,2,3)>
        <cfdump var="#res#">
        <cfset res = mulitiply(1,2,3,4)>
        <cfdump var="#res#">
    </div>

    <cffunction  name="mulitiply">
        <cfset res = 1>
        <cfloop array="#arguments#" index="i">
            <cfset res=res*arguments[i]>
        </cfloop>
        <cfreturn res>
    </cffunction>
    
</cfoutput>


</body>
</html>
