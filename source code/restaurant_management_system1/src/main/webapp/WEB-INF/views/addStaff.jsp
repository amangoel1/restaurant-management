<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored ="false"%>
      <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
      
      <%            
        response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
        response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
        response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
        response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <title>Add Staff</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
        crossorigin="anonymous">


    <style>
    .input-group-prepend {
    min-width:100px;
  width : 10%; /*adjust as needed*/
}
.input-group-prepend span {
  width: 100%;
  overflow: hidden;
}
.input-group-prepend label {
  width: 100%;
  overflow: hidden;
}
        /* .tablist{
    text-align: center;
    text-decoration: none;
    font-size: 4mm;
    color: rgb(43, 43, 43);
    border-bottom: rgb(202, 202, 202) 1px solid;
    border-right: rgb(202, 202, 202) 1px solid;
    background-color: inherit;
    width: 20px;
    font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
   
} */
</style>


        
<script type="text/javascript">

function validation(){
	 var firstName = document.forms["registration"]["firstName"].value;
	   var lastName = document.forms["registration"]["lastName"].value;
	 //  var contactNumber = document.forms["registration"]["contactNumber"].value;
	//   var password = document.forms["registration"]["password"].value;
	  // var confirmPassword = document.forms["registration"]["confirmPassword"].value;
	  // console.log("gello");
	 // var age = document.forms["registration"]["age"].value;
	  
	  var age = document.forms["registration"]["age"].value;
	  
	  
	   if(!(/^[a-zA-z]*$/g.test(firstName))){
		   alert('First Name should be alphabet only');
		  return false;
	   }
	   if(!/^[a-zA-z]*$/g.test(lastName)){
		   alert('Last Name should be alphabet only');
	   return false;
	   } 
	   
	   
	   if(age<18)
		   {
		   alert('Age must be greater than 18');
		   return false;
		   }
	   
	   
	  // alert('Successfully registered');
	   
	   return true; 

}
</script>
</head>

<body background="resources/css/bg2.jpg" style="background-size:cover" >
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#" style="font-size:7mm;">Foodster</a>
        <div class="collapse navbar-collapse" id="navbarText">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false">
                        Inventory
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="viewInventory.html">View Inventory List</a>
                        <a class="dropdown-item" href="addInventory.html">Add Inventory</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false">
                        Staff
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="viewStaff.html">View Staff List</a>
                        <a class="dropdown-item" href="addStaff.html">Add Staff</a>
                    </div>
                </li>
            </ul>
            <span class="navbar-text">
                <a href="signOut.html" class="nav-link">
                    <span class="fas fa-sign-out-alt"></span>
                    Sign out
                </a>
            </span>
        </div>
    </nav>

    <div style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;margin:30px;">
        <div class="row">
            <div class="col-md-3 bg-dark">
                 <br>
                <span>
                    <h4 align="center" style="background:white;border-radius:50px 50px;padding:0px 5px;">Profile</h4>
                </span>
                <br>
                <center>
                <img src="resources/css/user_icon.png" style="width:75px">
                    <br>
                    <br>
                    <b style="font-size:7mm;background:white;border-radius:50px 50px;padding:0px 5px;">${employee.firstName} ${employee.lastName}
                    </b>
                    <br>
                    <br>
                    <br>
                    <p style="background:white;border-radius:50px 50px;padding:0px 5px;font-size:5mm">Age: ${employee.age}</p>
                
                    <br>
                    <p style="background:white;border-radius:50px 50px;padding:0px 5px;font-size:5mm">
                        Gender:

                        ${employee.gender}
                    </p>
                    
                    <br>
                    <p style="background:white;border-radius:50px 50px;padding:0px 5px;font-size:5mm">
                        Contact:
                        ${employee.contactNumber}
                    </p>
                    <br>
                </center>
            </div>

            <div class="col-md-9 pt-2" style="background-color: rgba(182, 182, 182, 0.7)">
            <h3>Add New Staff</h3>
                <form class="m-8" name="registration" onsubmit="return validation() "action="addStaff.html" method="POST">
                <div class="input-group input-group mb-3">
                    <!-- <div class="input-group-prepend">
                      <span class="input-group-text" id="inputGroup-sizing-sm">Staff Id</span>
                    </div>
                    <input type="text" name="staffId" maxlength="50" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm">
                  </div> -->
                  <div class="input-group input-group mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id="inputGroup-sizing-sm">First Name</span>
                    </div>
                    <input type="text" name="firstName" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm">
                  </div>
                  <div class="input-group input-group mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id="inputGroup-sizing-sm">Last Name</span>
                    </div>
                    <input type="text" name="lastName" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm">
                  </div>
                  <div class="input-group input-group mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id="inputGroup-sizing-sm">Age</span>
                    </div>
                    <input type="number" name="age" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm">
                  </div>
                  <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <label class="input-group-text" for="inputGroupSelect01">Gender</label>
                    </div>
                    <select name="gender" class="custom-select" id="inputGroupSelect01">
                      <option value="Male" selected>Male</option>
                      <option value="Female">Female</option>
                    </select>
                  </div>
                  <div class="input-group input-group mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id="inputGroup-sizing-sm">Address</span>
                    </div>
                    <input type="text" name="address" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm">
                  </div>
                  <button type="submit" class="btn btn-primary">Submit</button>
                  <button type="reset" class="btn btn-danger">Reset</button>
                  </form>
        </div>
        </div>   
        </div>
    </div>
</body>

</html>