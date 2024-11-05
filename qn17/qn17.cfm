<cfoutput>
<!DOCTYPE html>
<html lang="en">
<head>    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>qn17</title>
</head>
<body>
    <div>
        <form action="" method="POST">
            <div>
                <input type="text" name="number">
                <input type="submit" value="Submit">
            </div>
        </form>
        <cfif structKeyExists(form, "number")> 
            <cfset local.num = form.number>
            <cfset local.value=createObject("component","components.qn17")>
            <cfset local.result=local.value.fn_result(local.num)>
<!---             <cfdump  var="#local.result#"> --->
            <cfloop index="i" from=1 to=#local.num#>
                <span style="color:#local.result[i]#">#i#</span>
            </cfloop>
        </cfif>
    </div>
</body>
</html>
</cfoutput>