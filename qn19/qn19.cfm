<cfoutput>
<!DOCTYPE html>
<html lang="en">
<head>    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>qn19</title>
</head>
<body>
    <div>
        <form action="" method="POST">
            <div>
                <input type="submit" value="Submit">
            </div>
        </form>
        <cfset local.value=createObject("component","components.qn19")>
        <cfset local.result=local.value.fn_result()>
        #local.result#
    </div>
</body>
</html>
</cfoutput>