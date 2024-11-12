<!DOCTYPE html>
<html lang="en">
<head>    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">
    <title>qn19</title>
</head>
<body>
    <cfoutput>
        <div class="border text-center m-4 p-4">
            <form action="" method="POST">
                <div>
                    <input type = "submit" value = "Submit">
                </div>
            </form>
            <cfset local.value = createObject("component","components.qn19")>
            <cfset local.result = local.value.counter()>
            #local.result#
        </div>
    </cfoutput>
</body>
</html>