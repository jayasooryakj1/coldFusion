<!DOCTYPE html>
<html lang = "en">
    <head>
        <meta charset = "UTF-8">
        <meta name = "viewport" content = "width = device-width, initial-scale = 1.0">
        <title>qn25</title>
        <link rel="stylesheet" href="../../bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">
    </head>
    <body>
        <cfoutput>
            <form action = "" method = "POST">
                <div class = "text-center border m-4 p-3">
                    <textarea name = "text" placeholder = "Enter the string"></textarea><br><br>
                    <input type = "submit" value = "Submit" name="submitButton">
                </div>
            </form>
            <cfif structKeyExists(form,"submitButton")>
                <cfset local.obj  =  new Component.tagCloud()>
                <cfset local.result  =  local.obj.wordCount(form.text)>
                <div class = "w-25 mx-auto mt-5 p-4">
                    <div class = "text-center"><cfdump var="#local.result#"></div>
                </div> 
            </cfif>
        </cfoutput>
    </body>
</html>