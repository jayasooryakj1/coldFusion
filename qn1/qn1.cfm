<!DOCTYPE html>
<html lang="en">
    <head>    
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">
        <title>qn1</title>
    </head>
    <body>
        <cfoutput>
            <div class = "ms-2 me-2 mt-5 border p-4">
                <h5>Enter Rating</h5>
                <form action = "" method = "POST">
                    <div class = "mt-3">
                        <input type = "text" name = "number">
                        <input  type= "submit" value = "Submit">
                    </div>
                </form>
                <cfif structKeyExists(form, "number")> 
                    <cfset local.num = form.number>
                    <cfset local.value = createObject("component","components.qn1")>
                    <cfset local.result = local.value.funcRating(local.num)>
                    <div class = "d-flex justify-content-center mt-5">
                        <p>Output :  #local.result#</p>
                    </div>
                </cfif>
            </div>
        </cfoutput>
    </body>
</html>