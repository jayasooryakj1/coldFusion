function val(event)
{
    let position=document.getElementById("position").value;
    let startDate=document.getElementById("startDate").value;
    let portfolio=document.getElementById("portfolio").value;
    let salaryDollar=document.getElementById("salaryDollar").value;
    let salaryCent=document.getElementById("salaryCent").value;
    let firstName=document.getElementById("firstName").value;
    let lastName=document.getElementById("lastName").value;
    let email=document.getElementById("email").value;
    let phone1=document.getElementById("phone1").value;
    let phone2=document.getElementById("phone2").value;
    let phone3=document.getElementById("phone3").value;
    let phn=phone1 + phone2 + phone3;
  
    const urlPattern = /(http(s)?:\/\/.)?(www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%_\+.~#?&//=]*)/g;
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

    document.getElementById("errorPosition").innerHTML="";
    document.getElementById("errorStart").innerHTML="";
    document.getElementById("errorPortfolio").innerHTML="";
    document.getElementById("errorSalary").innerHTML="";
    document.getElementById("errorName").innerHTML="";
    document.getElementById("errorEmail").innerHTML="";
    document.getElementById("errorPhone").innerHTML="";

    if(position.length == 0)
    {
        document.getElementById("errorPosition").innerHTML="Select the position";
        event.preventDefault();
    }

    if(startDate.length == 0)
    {
        document.getElementById("errorStart").innerHTML="Select the startDate";
        event.preventDefault();
    }

    if(portfolio.length == 0)
    {
        document.getElementById("errorPortfolio").innerHTML="Enter the protfolio portfolio";
        event.preventDefault();
    }
   

    if(salaryDollar.length == 0 && salaryCent.length == 0)
    {
        document.getElementById("errorSalary").innerHTML="Enter the salary in dollar and salary";
        event.preventDefault();
    }

    if(firstName.length == 0 || lastName.length == 0)
    {
        if(firstName.length == 0 && lastName.length == 0)
        {
            document.getElementById("errorName").innerHTML="Enter the First & Last name";
            event.preventDefault();
        }
        else if(lastName.length == 0)
        {
            document.getElementById("errorName").innerHTML="Enter the Last name";
            event.preventDefault();
        }
        else if(firstName.length == 0)
        {
            document.getElementById("errorName").innerHTML="Enter the First name";
            event.preventDefault();
        }
    }

    if(email.length == 0)
    {
        document.getElementById("errorEmail").innerHTML="Enter the email id";
        event.preventDefault();
    }
    else if(!emailRegex.test(email))
    {
        document.getElementById("errorEmail").innerHTML="Format not  valid";
        event.preventDefault();
    }

    if(phn.length != 10) 
    {
        document.getElementById("errorPhone").innerHTML="Enter the phone number";
        event.preventDefault();
    }

}