<!DOCTYPE html>
<html lang="en">
<head>    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">
    <title>qn11</title>
</head>
<body>
    <cfoutput>
        <div>
            <cfset local.res = mulitiply(1,2)>
            <cfdump var = "1 * 2 = #local.res#">
            <br>
            <cfset local.res = mulitiply(1,2,3)>
            <cfdump var = "1 * 2 * 3 = #local.res#">
            <br>
            <cfset local.res = mulitiply(1,2,3,4)>
            <cfdump var = "1 * 2 * 3 * 4 = #local.res#">
        </div>

        <cffunction  name = "mulitiply">
            <cfset local.res = 1>
            <cfloop array = "#arguments#" index = "i">
                <cfset local.res = local.res*arguments[i]>
            </cfloop>
            <cfreturn local.res>
        </cffunction>
    </cfoutput>
</body>
</html>
