<%@page import="java.util.Date"%>
<%@page import="com.mycompany.app.Contact"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<title>
    Contact
</title>

<body>
    <%
    response.setHeader("Cache-Control", "no-cache, no-store,must-revalidate");

    %>
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-2"> </div>
            <div class="col-sm-4">

                <p> userid:<%=session.getAttribute("infoid")%></p>
            </div>
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <a href="Logout.jsp">logout</a>
            </div>
            <div class="col-sm-2"></div>
        </div>


        <div class="container">
            <h2>Contact List</h2>
            <table class="table table-bordered">
                <thead>
                <tbody>
                    <tr>
                        <th>Firstname</th>
                        <th>Lastname</th>
                        <th>Phone</th>
                        <th>Mail</th>
                        <th>Message</th>
                    </tr>
                    <%
            List<Contact> listt=(List<Contact>)session.getAttribute("contactList");
                         for(Contact data : listt){
                            %>
                    <tr>
                        <td><%=data.getName()%></td>
                        <td><%=data.getlastName()%></td>
                        <td><%=data.getPhone() %></td>
                        <td><%=data.getMail()%></td>
                        <td><%=data.getMessage()%></td>
                    </tr>
                    </thread>
                </tbody>
                <%}%>                    
            </table>
         </div>

</div>
</body>
</html>