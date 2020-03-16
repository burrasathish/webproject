<!Doctype html>
<html>

<head>
    <title>
        Contact
    </title>
    <link href="css/ContactStyle.css" rel="stylesheet" type="text/css">

<body>
    <%
    response.setHeader("Cache-Control", "no-cache, no-store,must-revalidate");
    %>
    <h1 id="title">Login</h1>
    <div id="form-outer">
        <p style="color:brown"></p>
        <form action="loginform" method="post">
        
            <div class="rowTab">
                <div class="labels">
                    <label id="email-label" for="email">* Email: </label>
                </div>
                <div class="rightTab">
                    <input type="text" name="email" id="email" class="input-field" required
                        placeholder="Enter your Email">
                </div>
            </div>

            <div class="rowTab">
                <div class="labels">
                    <label for="message">* Password: </label>
                </div>
                <div class="rightTab">
                    <input type="password" name="password" id="message" class="input-field" required
                        placeholder="Enter your Message">
                </div>
            </div>
            <button id="submit" type="submit" class="btn btn-success">Submit</button>
        </form>
    </div>
</body>
</head>
</html>