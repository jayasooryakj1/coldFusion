<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
        <title>qn28 Home</title>
    </head>
    <body>
        <cfif structKeyExists(session, "userId")>
            <div class="w-50 mx-auto mt-5 bg-white text-center p-3">
                <cfset local.value = createObject("component","components.qn28")>
                <cfset local.result = local.value.pageList()>
                <form method="post">
                    <button name="logOut" type="submit" value="logOut">Log Out</button><br><br>
                </form>
                <table class="border table table-striped">
                    <tr>
                        <th>Page Name</th>
                    </tr>
                    <cfloop query="#local.result#">
                        <cfoutput>
                            <tr>
                                <td>
                                    <a href="pageDesc.cfm?id=#local.result.pageid#">#local.result.pagename#</a>
                                </td>
                            </tr>
                        </cfoutput>
                    </cfloop>
                </table>
            </div>
            <cfif structKeyExists(form, "logOut")>
                <cfset local.logoutObj = createObject("component", "components.qn28")>
                <cfset local.value = local.logoutObj.logoutFunction()>
            </cfif>
        <cfelse>
            <cflocation  url="index.cfm">
        </cfif>
    </body>
</html>