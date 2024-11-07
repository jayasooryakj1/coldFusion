<!DOCTYPE html>
<html lang="en">
<head>    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">
    <title>qn17</title>
</head>
<body>
    <cfoutput>
        <div class = " border p-4 m-4">
            <p>Enter  a number</p>
            <form action = "" method = "POST">
                <div>
                    <input type = "text" name = "number">
                    <input type = "submit" value = "Submit">
                </div>
            </form>
            <cfif structKeyExists(form, "number")> 
                <cfset local.num = form.number>
                <cfset local.value = createObject("component","components.qn17")>
                <cfset local.result = local.value.printNumber(local.num)>
                <cfloop index = "i" from = 1 to = #local.num#>
                    <span style = "color:#local.result[i]#">#i#</span>
                </cfloop>
            </cfif>
        </div>
    </cfoutput>
</body>
</html>