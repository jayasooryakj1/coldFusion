<cfoutput>
<!DOCTYPE html>
<html lang="en">
<head>    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>qn4</title>
</head>
<body>
    <div>
        <cfset local.value=createObject("component","components.calc")>
        <cfset local.result=local.value.fn_result()>    
        <cfdump  var="#local.result#">
    </div>
</body>
</html>
</cfoutput>