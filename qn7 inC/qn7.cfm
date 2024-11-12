<cfapplication name="enthelum" sessionmanagement=yes>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">
    <title>Qn 7</title>
</head>
<body>
    <form method = "POST">
        <div>
            <label>Enter Key</label>
            <input type = "text" name = "key" >
            <br>
            <label>Enter Value</label>
            <input type = "text" name = "value">
            <br>
            <input type = "submit">
        </div>
        <cfif isDefined("form.key") && isDefined("form.value")>
            <cfoutput>
                <cfset keyValue = structNew()>
                <cfset session.keyValue[form.key] = form.value>
                <cfdump  var = #session.keyValue#>
            </cfoutput>
        </cfif>
    </form>
</body>
</html>

