<cfapplication name="enthelum" sessionmanagement=yes>
<html>
<head>
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
        <cfif isDefined("form.key") && isDefined("form.value")>
            <cfoutput>
                <cfset keyValue = structNew()>
                <cfset session.keyValue[form.key]=form.value>
                <cfdump  var=#session.keyValue#>
            </cfoutput>
        </cfif>
    </form>
</body>
</html>