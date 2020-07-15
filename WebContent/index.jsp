<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
   <title> Register </title>
   <script src="https://apis.google.com/js/platform.js" async defer></script>
   <meta name="google-signin-client_id" content="590987844021-eesd1ivasluv30r463lvvd28l4k3cki3.apps.googleusercontent.com">
</head>
<style>
  .g-signin2,button,#myImg,#name
  {
     margin: 10% 0 0 40%;
  }
  button,#myImg,#name
  {
    margin-top: 1%;
  }
</style>
<body>
   <div class="g-signin2" data-onsuccess="onSignIn" id="myP"></div>
      <img id="myImg"><br>
      <p id="name"></p>
      <div id="status">
   </div>
   <script type="text/javascript">
      function onSignIn(googleUser) 
   {
       //window.location.href='success.jsp';
      var profile = googleUser.getBasicProfile();
      var imagurl=profile.getImageUrl();
      var name=profile.getName();
      var email=profile.getEmail();
      document.getElementById("myImg").src = imagurl;
      document.getElementById("name").innerHTML = name;
      //window.location.href='https://contacts.google.com/?hl=en&tab=rC';
      window.open("https://contacts.google.com/?hl=en&tab=rC")
      //document.getElementById("myP").style.visibility = "hidden";
      
   }
   </script>
   <button onclick="myFunction()">Sign Out</button>
   <script>
      function myFunction() {
      gapi.auth2.getAuthInstance().disconnect();
      location.reload();
   }
   </script>
</body>
</html>