<!DOCTYPE html>
<html lang="en">
    <head>    
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="">
        <link rel="stylesheet" href="../../bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">
        <title>qn22</title>
    </head>
    <body>
        <cfoutput>
            <div class="border m-4 p-4">
                <cfset local.mystruct = [{"Name":"Saravanan","Age":27,"LOCATION":"Dubai"},{"Name":"Ram","Age":26,"LOCATION":"Kovilpatti"}]>
                <cfset local.length = arrayLen(local.myStruct)>
                    <table class="table border">
                    <tr>
                        <th>Name</th>
                        <th>Age</th>
                        <th>Location</th>
                    </tr>
                    <cfloop index="i" from=1 to="#local.length#">
                        <tr>
                            <td>#local.mystruct[i].name#</td>
                            <td>#local.mystruct[i].age#</td>
                            <td>#local.mystruct[i].location#</td>
                        </tr>
                    </cfloop>
                </table>
            </div>
        </cfoutput>
    </body>
</html>