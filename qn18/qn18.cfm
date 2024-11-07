<!DOCTYPE html>
<html lang="en">
<head>    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="">
    <link rel="stylesheet" href="../../bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">
    <title>qn18</title>
</head>
<body>
        <div class = "ms-2 me-2 mt-5 text-center border p-4">
            <cfset local.value = createObject("component","components.qn18")>
            <cfset local.result = local.value.query()>
            <cfoutput>
                <cfdump  var="#local.result#">
            </cfoutput>
        </div>
</body>
</html>


