<cfapplication name="application" sessionmanagement="yes">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <title>qn28 Admin</title>
</head>
<body>
    <div class="w-50 mx-auto mt-5 bg-white text-center p-3">
        <cfset local.value = createObject("component","components.qn28")>
        <cfset local.result = local.value.pageList()>
        <form method="post">
            <cfoutput>
                <cfloop query="#local.result#">
                    #local.result.pagename#&nbsp;&nbsp;&nbsp;&nbsp;
                    #local.result.pagedesc#&nbsp;&nbsp;&nbsp;&nbsp;
                    <button name="edit" type="submit" value="#local.result.pageid#">Edit</button>&nbsp;&nbsp;&nbsp;&nbsp;
                    <button name="dlt" type="submit" value="#local.result.pageid#">Delete</button>
                    <br><br>
                </cfloop>
            </cfoutput>
        </form>
    </div>
    <cfif structKeyExists(form, "dlt")>
        <cfset local.objDlt = createObject("component", "components.qn28")>
        <cfset local.dltVar = local.objDlt.dltFunction(form.dlt)>
    </cfif>
    <cfif structKeyExists(form, "edit")>
        <cfset session.editId = "#form.edit#">
        <cflocation  url="edit.cfm">
    </cfif>
</body>
</html>