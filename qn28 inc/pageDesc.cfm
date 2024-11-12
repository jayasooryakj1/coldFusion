<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <title>qn28 Desc</title>
</head>
<body>
    <div class="w-50 mx-auto mt-5 bg-white text-center p-3">
        <cfset local.value = createObject("component","components.qn28")>
        <cfset local.result = local.value.pageList()>
        <cfset local.id = url.id>
        <table class="border table table-striped">
            <tr>
                <th>Page Name</th>
                <th>PageDesc</th>
            </tr>
            <cfloop query="#local.result#">
                <cfif local.result.pageid==local.id>
                    <cfoutput>
                        <tr>
                            <td>#local.result.pagename#</td>
                            <td>#local.result.pagedesc#</td>
                        </tr>
                    </cfoutput>
                </cfif>
            </cfloop>
        </table>
    </div>
</body>
</html>