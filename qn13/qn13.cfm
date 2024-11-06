<cfoutput>
<!DOCTYPE html>
<html lang="en">
<head>    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">
    <title>qn13</title>
</head>
<body>
    <div class="border text-center m-4 p-4">
        <form action="" method="POST">
            <div>
                 <p>Enter a sub sring to count the number of occurrences of it in the string <br>
                 "the quick brown fox jumps over the lazy dog"</p>
            </div>
            <div>
                <input type="text" name="subString">
                <input type="submit" value="Submit">
            </div>
        </form>
        <cfif structKeyExists(form, "subString")> 
            <cfset local.search = form.subString>
            <cfset local.value = createObject("component","components.qn13")>
            <cfset local.result = local.value.funCount(local.search)>
            <p class="mt-2">Count of #form.subString# in the string : #local.result#</p>
        </cfif>
    </div>
</body>
</html>
</cfoutput>

