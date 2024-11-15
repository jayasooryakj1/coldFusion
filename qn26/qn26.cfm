<!DOCTYPE html>
<html lang = "en">
    <head>
        <meta charset = "UTF-8">
        <meta name = "viewport" content = "width = device-width, initial-scale = 1.0">
        <title>qn26</title>
        <link rel="stylesheet" href="../../bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">
    </head>
    <body>
            <form action = "" method = "POST" enctype="multipart/form-data">
                <div class="border m-4 p-3 text-center">
                    <input type="file" name="dataFile"><br><br>
                    <input type = "submit" value = "Read from file" name="submitButton">
                </div>
            </form>
            <cfif structKeyExists(form,"submitButton")>
                <cfset local.obj  =  new Components.qn26()>
                <cfset local.result  =  local.obj.splitString("#form.dataFile#")>
                <div class="text-center m-4 p-3">
                    <cfdump var="#local.result#">
                </div> 
            </cfif>
    </body>
</html>