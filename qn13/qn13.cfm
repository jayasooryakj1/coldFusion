<cfoutput>
<!DOCTYPE html>
<html lang="en">
<head>    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>qn1 cfif Rating</title>
</head>
<body>
    <div>
        <form action="" method="POST">
            <div>
                <input type="text" name="subString">
                <input type="submit" value="Submit">
            </div>
        </form>
        <cfif structKeyExists(form, "subString")> 
            <cfset local.search = form.subString>
            <cfset local.value=createObject("component","components.qn13")>
            <cfset local.result=local.value.fn_result(local.search)>
            #local.result#
        </cfif>
    </div>
</body>
</html>
</cfoutput>

