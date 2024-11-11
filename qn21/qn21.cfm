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
                    <label>Name of the person to wish</label>
                    <input type = "text" name = "name"><br><br>
                    <label>e-mail id of the person</label>
                    <input type = "email" name = "email"><br><br>
                    <div class="d-flex align-items-center justify-content-center">
                        <div><label>Enter Birthday wish</label></div>
                        <div class="ms-3"><textarea rows="5" cols="50" name="wish"></textarea></div>
                    </div><br>
                    <input type="file" name="bdImg"><br><br>
                    <input  type= "submit" name="submit" value = "Submit">
                </div>
            </form>
            <cfif structKeyExists(form, "submit")> 
                <cfset local.bday[name] = form.name>
                <cfset local.bday[email] = form.email>
                <cfset local.bday[wish] = form.wish>
                <cfset local.bday[bdImg] = form.bdImg>
                <cfset local.value = createObject("component","components.qn21")>
                <cfset local.result = local.value.bdayFunction(local.bday)>
                <div class = "d-flex justify-content-center mt-5">
                    <p>Output :  #local.result#</p>
                </div>
            </cfif>
        </div>
    </cfoutput>
</body>
</html>


