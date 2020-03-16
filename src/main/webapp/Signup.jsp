<!Doctype html>
<html>

<head>
    <title>
        Contact
    </title>
    <link href="css/ContactStyle.css" rel="stylesheet" type="text/css">

<body>
    <%@include file="Header.jsp"%>
    <h1 id="title">Sign Up</h1>
    <div id="form-outer">
        <p style="color:brown"></p>
        <form action="sigupform" method="post">
            <div class="rowTab">
                <div class="labels">
                    <label id="name-label" for="name">*Name: </label>
                </div>

                <div class="rightTab">
                    <input autofocus type="email" name="name" class="input-field" placeholder="enter Your name"
                        required>
                </div>
                <div style="color:red" id="valid"></div>
            </div>
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
    <%@include file="Footer.jsp"%>
</body>
</head>

</html>