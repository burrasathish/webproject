<!Doctype html>
<html>

<head>
    <title>
        Contact
    </title>
    <link href="css/ContactStyle.css" rel="stylesheet" type="text/css">

<body>
    <h1 id="title">contact us</h1>
    <div id="form-outer">
        <p style="color:brown"></p>
        <form action="form"   method="post">
            <div class="rowTab">

                <div class="labels">
                    <label id="name-label" for="name">* FirstName: </label>
                </div>

                <div class="rightTab">
                    <input autofocus type="text" name="firstname" class="input-field" placeholder="enter Your name"
                        required>
                </div>
                <div style="color:red" id="valid"></div>
            </div>

            <div class="rowTab">

                <div class="labels">
                    <label id="name-label" for="name">* LastName: </label>
                </div>

                <div class="rightTab">
                    <input autofocus type="text" name="lastname" id="name" class="input-field"
                        placeholder="enter Your name" required>
                </div>
                <div style="color:red" id="valid"></div>
            </div>

            <div class="rowTab">
                <div class="labels">
                    <label for="phone">* phone: </label>
                </div>
                <div class="rightTab">
                    <input type="phone" name="phone" id="phone" class="input-field" required
                        placeholder="Enter your phone">
                </div>
            </div>


            <div class="rowTab">
                <div class="labels">
                    <label id="email-label" for="email">* Email: </label>
                </div>
                <div class="rightTab">
                    <input type="email" name="email" id="email" class="input-field" required
                        placeholder="Enter your Email">
                </div>
            </div>

            <div class="rowTab">
                <div class="labels">
                    <label for="message">* Message: </label>
                </div>
                <div class="rightTab">
                    <input type="text" name="message" id="message" class="input-field" required
                        placeholder="Enter your Message">
                </div>
            </div>

            <button id="submit" type="submit" class="btn btn-success">Submit</button>

        </form>
    </div>
</body>
</head>

</html>