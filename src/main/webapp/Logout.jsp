<html>
<head>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
   
     <title>logout Page</title>
</head>
<body>
     <%     
         session.removeAttribute("infoid");
         session.removeAttribute("contactList");
         session.invalidate();
         response.sendRedirect("index.jsp");
     %>
<!-- <center>
     <h1>You have successfully logged out</h1>

</center> -->
</body>
</html>