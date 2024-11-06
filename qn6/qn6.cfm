<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">
    <title>Qn 6</title>
</head>
<body>
    <form method = "POST">
        <div class="border m-4 text-center p-4">
            <label>Enter Key</label>
            <input type = "text" name = "key" >
            <br>
            <label class="mt-3">Enter Value</label>
            <input type = "text" name = "value">
            <br>
            <input class="mt-3" type = "submit">
        </div>
        <cfif isDefined("form.key") && isDefined("form.value")>
            <div class="text-center border p-4 m-4">
                <cfoutput>
                    <cfset local.keyValue = structNew()>
                    <cfset local.keyValue[form.key] = form.value>
                    <cfdump  var = #local.keyValue#>
                </cfoutput>
            </div>
        </cfif>
    </form>
</body>
</html>

