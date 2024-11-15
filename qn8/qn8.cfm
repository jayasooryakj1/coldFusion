<cfapplication name="enthelum" sessionmanagement=yes>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">
        <title>qn8</title>
    </head>
    <body>
        <form method = "POST">
            <div class="border m-4 text-center p-4"> 
                <label>Enter Key</label>
                <input type = "text" name = "key" >
                <br>
                <label class="mt-4">Enter Value</label>
                <input type = "text" name = "value">
                <br>
                <input class="mt-4" type = "submit">
            </div>
        </form>
            <div class="border m-4 p-4">
            <cfif isDefined("form.key") && isDefined("form.value")>
                <cfset local.value=createObject("component","components.qn8")>
                <cfset local.result=local.value.structFunction("form.key", "form.value")>
                <cfdump  var="#local.result#">
            </cfif>
            </div>
    </body>
</html>