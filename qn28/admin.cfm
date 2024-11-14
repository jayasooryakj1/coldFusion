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
        <cfif structKeyExists(session, "adminId")>
            <div class="mx-auto mt-5 bg-white p-3">
                <cfset local.value = createObject("component","components.qn28")>
                <cfset local.result = local.value.pageList()>
                <form method="post">
                    <div class="d-flex">
                        <button class="p-2 mb-4" name="add" type="submit" value="add">Add a page</button>
                        <button class="p-2 mb-4 ms-2" name="logOut" type="submit" value="logOut">Logout</button>
                        <h4 class="text-center w-75">ADMIN</h4>
                    </div>
                    <cfoutput>
                        <table class="w-100 table border text-center">
                            <tr>
                                <th>Page Name</th>
                                <th class="w-50">Page Description</th>
                                <th>Created on</th>
                                <th>Last edited on</th>
                                <th></th>
                                <th></th>
                            <tr>
                            <cfloop query="#local.result#">
                                <cfif local.result._createdBy==session.adminId>
                                <tr>
                                    <td class="border">#local.result.pagename#</td>
                                    <td class="border">#local.result.pagedesc#</td>
                                    <td class="border">#local.result._createdOn#</td>
                                    <td class="border">#local.result._updatedOn#</td>
                                    <td class="border"><button class="p-2" name="edit" type="submit" value="#local.result.pageid#">Edit</button></td>
                                    <td class="border"><button class="p-2" name="dlt" type="button" value="#local.result.pageid#" onclick="deletePage(this)">Delete</button></td>
                                <tr>
                                </cfif>
                            </cfloop>
                        </table>
                    </cfoutput>
                </form>
            </div>
            <cfif structKeyExists(form, "edit")>
                <cfset session.editId = "#form.edit#">
                <cflocation  url="edit.cfm">
            </cfif>
            <cfif structKeyExists(form, "add")>
                <cflocation  url="add.cfm">
            </cfif>
            <cfif structKeyExists(form, "logOut")>
                <cfset local.logoutObj = createObject("component", "components.qn28")>
                <cfset local.value = local.logoutObj.logoutFunction()>
            </cfif>
        <cfelse>
            <cflocation  url="index.cfm">
        </cfif>
        <script src="js/script.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    </body>
</html>