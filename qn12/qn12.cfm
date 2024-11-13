<!DOCTYPE html>
<html lang="en">
    <head>    
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="">
        <link rel="stylesheet" href="../../bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">
        <title>qn12</title>
    </head>
    <body>
            <div class = "ms-2 me-2 mt-5 text-center border p-4">
                <form action = "" method = "POST">
                    <div class = "mt-3">
                        <label>Enter a number (1-10)</label><br><br>
                        <input type = "text" name = "number"><br><br>
                        <input  type= "submit" name = "submit" value = "Submit">
                    </div>
                </form>
                <cfif structKeyExists(form, "submit")> 
                    <cfset local.value = createObject("component","components.qn12")>
                    <cfset local.result = local.value.query(form.number)>
                    <cfset local.record = local.result.firstName[form.number]>
                    <div class = "d-flex justify-content-center mt-5">
                        <table>
                            <tr>
                                <th>First Name</th>
                                <th>last Name</th>
                            </tr>
                            <cfoutput query="local.result">
                                <tr>
                                    <td>#firstName#</td>
                                    <td>#lastName#</td>
                                </tr>
                            </cfoutput>
                        </table>
                    </div>
                    <div>
                        <br><br>
                            <cfoutput>
                                #local.record#
                            </cfoutput>
                        </div>
                </cfif>
            </div>
    </body>
</html>


