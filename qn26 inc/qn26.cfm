<!DOCTYPE html>
    <html lang = "en">
        <head>
            <meta charset = "UTF-8">
            <meta name = "viewport" content = "width = device-width, initial-scale = 1.0">
            <title>Document</title>
            <link rel="stylesheet" href="../../bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">
        </head>
        <body>
            <cfoutput>
                <form action = "" method = "POST" enctype="multipart/form-data">
                    <div class = "text-center mt-3 w-100">
                        <input type="file" name="dataFile" class="form-control w-25 mx-auto">
                        <input type = "submit" value = "Read from file" name="submitButton" class = "btn btn-primary my-auto mt-3 w-25">
                    </div>
                </form>
                <cfif structKeyExists(form,"submitButton")>
                    <cfset local.obj  =  new Components.qn26()>
                    <cfset local.result  =  local.obj.splitString("#form.dataFile#")>
                    <div class = "w-25 mx-auto mt-5 rounded-pill p-4">
                        <div class = "text-center"><cfdump var="#local.result#"></div>
                    </div> 
                </cfif>
            </cfoutput>
        </body>
    </html>