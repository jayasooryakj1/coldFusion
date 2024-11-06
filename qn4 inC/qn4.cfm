<!DOCTYPE html>
<html lang="en">
<head>    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">
    <title>qn4</title>
</head>
<body>
    <cfoutput>
        <div>
            <cfset local.value=createObject("component","components.qn4")>
            <cfset local.result=local.value.dates()>
            <cfdump  var = "#local.result#">
        </div>
    </cfoutput>
</body>
</html>