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
        <div class="border m-4 p-4 text-center">
            <label>Enter Key</label>
            <input type="text" name="key" >
            <br>
            <label class="mt-3">Enter Value</label>
            <input type="text" name="value">
            <br>
            <input class="mt-3" type="submit">
        </div>
    </form>
    <div class="border  text-center p-4 m-4">
        <cfif isDefined("form.key") && isDefined("form.value")>
            <cfoutput>
                <cfset local.value=createObject("component","components.qn9")>
                <cfset local.result=local.value.structFunction("form.key", "form.value")>
                <cfdump  var="#local.result#">
            </cfoutput>
        </cfif>
    </div>
</body>
</html>