<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css" >
    <link rel="stylesheet" href="css/style.css">
    <title>qn23</title>
</head>
<body>
    <div class="d-flex flex-column align-items-center">
        <div class="header w-50 mt-3">
            <img src="assets/images/title.png" alt="title">
        </div>
        <div class="mainBody w-50 p-3">
            <form action="" method="post">
                <div class="bodyHeader mb-3">
                    <h5>Employment Application</h5>
                    <div class="infinity">Infinity Box Inc.</div>
                </div>
                <div class="line">
                </div>
                <div class="mt-3 pos">
                    <b>Which position are you applying for?</b>
                    <span class="redStar">*</span>
                </div>
                <div>
                    <select class="posOptions" name="position" id="position" required="true">
                        <option value=""></option>
                        <option value="Interface Designer">Interface Designer</option>
                        <option value="Software Engineer">Software Engineer</option>
                        <option value="System Administrator">System Administrator</option>
                        <option value="Office Manager">Office Manager</option>
                    </select>
                    <div id="errorPosition"></div>
                </div>
                <div class="rel">
                    <b>Are you willing to relocate?</b>
                    <span class="redStar">*</span><br>
                    <input class="mt-2" type="radio" name="relOption" value="yes" checked="checked">  Yes<br>
                    <input class="mt-2" type="radio" name="relOption" value="no">  No
                </div>
                <div class="start mt-3">
                    <b>When can you start?</b>
                    <span class="redStar">*</span>
                    <div class="mt-3">
                        <input type="date" id="startDate" name="startDate">
                    </div>
                    <div id="errorStart"></div>
                </div>
                <div class="inp mt-3">
                    <b>Portfolio Web Site</b><br>
                    <input class="mt-2" name="portfolio" id="portfolio" type="text" value="http://">
                    <div id="errorPortfolio"></div>
                </div>
                <div class="res mt-3">
                    <b>Attach a Copy of Your Resume</b><br>
                    <input class="mt-2" name="resume" id="resume" type="file">
                    <div class="mt-2 pdf">
                        Word or PDF Documents Only
                    </div>
                </div>
                <div class="salary mt-3">
                    <b>Salary Requirements</b>
                    <div class="mt-3">
                        <span>$</span>
                        <span><input class="dollar" name="salaryDollar" id="salaryDollar" type="text"></span>
                        <span>.</span>
                        <span><input class="cents" name="salaryCent" id="salaryCent" type="text"></span>
                        <br>
                        <div class="salDen">
                            <span class="ms-3 me-5">Dollar</span>
                            <span class="ms-4">Cents</span>
                        </div>
                    </div>
                    <div id="errorSalary"></div>
                </div>
                <div class="line mt-4">
                </div>
                <div class="mt-3 contact">
                    Your Contact Information
                </div>
                <div class="name mt-2">
                    <b>Name</b>
                    <span class="redStar">*</span><br>
                    <span><input class="firstName" id="firstName" name="firstName" type="text"></span>
                    <span><input class="lastName" id="lastName" name="lastName" type="text"></span>
                    <div id="errorName"></div>
                </div>
                <div class="email mt-3">
                    <b>Email Address</b>
                    <span class="redStar">*</span>
                </div>
                <div>
                    <input class="mt-2" name="email" id="email" type="email">
                    <div id="errorEmail"></div>
                </div>
                <div class="phone mt-3">
                    <b>Phone</b>
                    <span class="redStar">*</span>
                    <div class="mt-2">
                        <span><input class="phoneInput" id="phone1" name="phone1" type="text"></span> -
                        <span><input class="phoneInput" id="phone2" name="phone2" type="text"></span> -
                        <span><input class="phoneInput2" id="phone3" name="phone3" type="text"></span>
                    </div>
                    <div>
                        <span class="ms-1 me-3">###</span>
                        <span class="me-3">###</span>
                        <span class="ms-1">####</span>
                    </div>
                    <div id="errorPhone"></div>
                </div>
                <div>
                    <input class="mt-3 ps-2 pe-2" type="submit" name="submit" value="submit">
                </div>
            </form>
            <div class="formFooter m-3 mt-5">
                This site is protected by reCAPTCHA Enterprise and the Google <a href=""> Privacy Policy </a> and <a href="">Terms of Service </a> apply.
            </div>
        </div>
        <div class="footer d-flex flex-column align-items-center mt-2">
            <div class="footerHeading">
                Powered By
            </div>
            <div>
                <img src="assets/images/footer.png" alt="footerImage" width="100">
            </div>
            <div class="footerText mt-1">
                See how easy it is to <a href="">create a form</a>
            </div>
        </div>
    </div>
    <div>
        <cfif structKeyExists(form, "submit")> 
            <cfset local.user[position] = form.position>
            <cfset local.user[relOption] = form.relOption>
            <cfset local.user[startDate] = form.startDate>
            <cfset local.user[portfolio] = form.portfolio>
            <cfset local.user[resume] = form.resume>
            <cfset local.user[salary] = form.salaryDollar & "." & form.salaryCent>
            <cfset local.user[userName] = form.firstName & " " & form.lastName>
            <cfset local.user[email] = form.email>
            <cfset local.user[phoneNumber] = form.phone1&form.phone2&form.phone3>
            <cfset local.value = createObject("component","components.qn21")>
            <cfset local.result = local.value.bdayFunction(local.bday)>
        </cfif>
    </div>
    <script src="js/script.js"></script>
</body>
</html>