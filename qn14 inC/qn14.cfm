<cfapplication sessionmanagement="yes">


<!DOCTYPE html>
<html lang="en">
<head>    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="">
    <link rel="stylesheet" href="../../bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">
    <title>qn21</title>
</head>
<body>
    <cfoutput>
        <div class = "ms-2 me-2 mt-5 text-center border p-4">
            <form action = "" method = "POST" enctype="multipart/form-data">
                <div class = "mt-3">
                    <label>Image name</label>
                    <input type = "text" name = "name"><br><br>
                    <div class="d-flex align-items-center justify-content-center">
                        <div><label>Description</label></div>
                        <div class="ms-3"><textarea rows="5" cols="50" name="desc"></textarea></div>
                    </div><br>
                    <input type="file" name="thumbnail"><br><br>
                    <input  type= "submit" name="submit" value = "Submit">
                </div>
            </form>
            <cfif structKeyExists(form, "submit")>
                <cfset local.value = createObject("component","components.qn14")>
                <cfset local.result = local.value.thumbnailFunction(form.name, form.desc, form.thumbnail)>
                <a href="qn14Res.cfm">
                    <cfdump  var="#local.result["name"]#">
                    <cfimage action="writeToBrowser" source="#local.result["thumbnail"]#" width="20" height="20">
                </a>
                <cfset session.thumbnailStruct = structNew()>
                <cfset session.thumbnailStruct = local.result>
            </cfif>
        </div>
    </cfoutput>
</body>
</html>


