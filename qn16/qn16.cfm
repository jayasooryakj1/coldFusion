<!DOCTYPE html>
<html lang="en">
    <head>    
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">
        <title>qn16</title>
    </head>
    <body>
        <cfoutput>
            <div class="border m-4 p-4 text-center">
                <cfset local.obj = new components.qn16()>
                <cfset local.result = local.obj.func()>
                <p>The required output: </p><br>
                #local.result#
            </div>
        </cfoutput>
    </body>
</html>