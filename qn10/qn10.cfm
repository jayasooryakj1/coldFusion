<cfapplication name="enthelum" sessionmanagement=yes>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">
        <title>qn10</title>
    </head>
    <body>
        <form method = "POST">
            <div class="border m-4 p-4 text-center">
                <label>Enter Key</label>
                <input type = "text" name = "key" >
                <br>
                <label class="mt-3">Enter Value</label>
                <input type = "text" name = "value">
                <br>
                <input class="mt-3" type = "submit">
            </div>
            <div class="border m-4 p-4">
                <cfif isDefined("form.key") && isDefined("form.value")>
                    <cfoutput>
                        <cfset keyValue = structNew()>
                        <cfset session.keyValue[form.key] = form.value>
                        <cfset session.keyValue = StructToSorted(session.keyValue, "text", "asc", false)>
                        <cfdump  var = #session.keyValue#>
                    </cfoutput>
                </cfif>
            </div>
        </form>
    </body>
</html>