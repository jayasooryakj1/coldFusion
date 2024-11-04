<cfoutput>
<!DOCTYPE html>
<html lang="en">
<head>    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>qn2 cfcase Rating</title>
</head>
<body>
    <div>
    <h4>Rating</h4>
    <form action="" method="POST">
        <div>
            <input name="number">
            <input type="submit" value="Submit">
        </div>
    </form>
    <cfif structKeyExists(form, "number")> 
        <cfset local.num = form.number>
        <cfset local.value=createObject("component","components.calculate")>
        <cfset local.result=local.value.fn_result(local.num)>
        #local.result# 
    </cfif> 
    </div>
</body>
</html>
</cfoutput>