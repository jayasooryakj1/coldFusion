<!DOCTYPE html>
<html lang="en">
<head>    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">
    <title>qn3</title>
</head>
<body>
    <cfoutput>
        <div class = "border m-2 p-4">
            <h5>Find numbers divisible by 3</h5>
            <form action = "" method = "POST">
                <div class="mt-3">
                    <input name = "number">
                    <input type = "submit" value = "Submit">
                </div>
            </form>
            <cfif structKeyExists(form, "number")> 
                <cfset local.num = form.number>
                <cfset local.value = createObject("component","components.qn3")>
                <cfset local.result = local.value.divThree(local.num)>
                <div class="d-flex justify-content-center mt-5">
                    <p> Numbers divisible by three in the given input : #local.result# </p>
                </div>
            </cfif> 
        </div>
    </cfoutput>
</body>
</html>