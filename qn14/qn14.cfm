<cfapplication name="app" sessionmanagement="Yes">
<html>
    <head>
        <title>>qn14</title>
        <link rel="stylesheet" href="../../bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">
    </head>
    <body class="p-5">
        <cfoutput>
            <form method="post" class="p-3" enctype="multipart/form-data">
                <div class="border text-center p-3">
                    <label>Enter the image name</label>
                    <input type="text" name="imgName" class="m-2"><br>
                    <label>Enter image description</label>
                    <textarea name="imgDescription" class="m-2"></textarea><br><br>
                    <input name="imgUpload" type="file"><br><br>
                    <input type="submit" name = "submit">
                </div>
            </form>
            <div class="border text-center p-2">
                <cfif structKeyExists(form,"submit")>
                    
                    <cfset local.newObject = createObject("component", "components.qn14")>
                    <cfset local.result = local.newObject.fnCheck(form.imgName,form.imgDescription,form.imgUpload)>
                    <div class="p-3">
                    <cfif local.result["error"] eq 0>
                       <span class="fw-bold"><cfdump  var="Size should not exceed 1MB"></span>
                    <cfelse>
                        <a href="./qn14Res.cfm" class="d-flex">
                            <div class="border border-success h-100 me-3"><cfimage action="writeToBrowser" source="#local.result["imgUpload"]#" width="20" height="20"></div>
                            <span class="fw-bold"><cfdump  var="#imgName#"></span>
                        </a>
                    </cfif>
                    </div>
                   <cfset session.objImage = local.result>
                </cfif>
            </div>
        </cfoutput>
    </body>
</html>