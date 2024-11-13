<cfapplication name="enthelum" sessionmanagement=yes>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">
    <title>Qn 9</title>
</head>
<body>
    <form method="POST">
        <div>
            <label>Enter Key</label>
            <input type="text" name="key" >
            <br>
            <label>Enter Value</label>
            <input type="text" name="value">
            <br>
            <input type="submit">
        </div>
    </form>
        <cfif isDefined("form.key") && isDefined("form.value")>
            <cfoutput>
                <cfif structKeyExists(session, "keyValue")>
                <cfelse>
                    <cfset session.keyValue = structNew()>
                </cfif>
                <cfif structKeyExists(session.keyValue, form.key)>
                    <p>Key already exists</p>
                <cfelse>
                    <cfset session.keyValue[form.key] = form.value>
                </cfif>
            </cfoutput>
        </cfif>
        <cfdump  var="#session.keyValue#">
</body>
</html>