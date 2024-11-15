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
            <form method="post">
                <div class="d-flex mb-2">
                    <button class="p-1" name="logOut" type="button" onclick="logout()" value="logOut">Logout</button><br><br>
                </div>
            </form>
            <table class="border w-100 table table-striped">
                <tr>
                    <th class="w-25">Page Name</th>
                    <th>Page description</th>
                </tr>
                <cfloop query="#local.result#">
                    <cfif local.result.pageid==local.id>
                        <cfoutput>
                            <tr>
                                <td class="border">#local.result.pagename#</td>
                                <td class="border">#local.result.pagedesc#</td>
                            </tr>
                        </cfoutput>
                    </cfif>
                </cfloop>
            </table>
        </div>
        <script src="js/script.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    </body>
</html>