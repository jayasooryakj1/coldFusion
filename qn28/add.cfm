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
            <h5>ADD</h5>
            <form method="post">
                <label>Enter page name</label>
                <input type="text" name="pagename"><br><br>
                <label>Enter page description</label>
                <input type="text" name="pagedesc"><br><br>
                <input type="submit" name="submit">
            </form>
        </div>
        <cfif structKeyExists(form, "submit")>
            <cfset local.addObj = createObject("component", "components.qn28")>
            <cfset local.result = local.addObj.addFunction(form.pagename, form.pagedesc)>
            <div class="text-center">
                <cfoutput>
                    <cfif local.result==0>
                        Page name already exists
                    <cfelse>
                        <cflocation  url="admin.cfm">
                    </cfif>
                </cfoutput>
            </div>
        </cfif>
    </body>
</html>