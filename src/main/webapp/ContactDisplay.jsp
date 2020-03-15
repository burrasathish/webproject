<%@page import="java.util.Date"%>
<%@page import="com.mycompany.app.Signup.* "%>
<%@page import="com.mycompany.app.Loginform.* "%>
<%@page import="com.mycompany.app.Contactdetails.* "%>


<html>

<head>
    <title>
        Contact
    </title>

<body>
    <%=new Date()%></br>

    <%
    Contactdetails loginService = new Contactdetails();
    List<User> list = loginService.getListOfUsers();
        System.out.println(list);
    %>

    <br />
    <h1>kjjkj</h1>

</body>
</head>

</html>