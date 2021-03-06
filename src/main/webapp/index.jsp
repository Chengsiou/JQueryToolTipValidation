<html>
<head>
    <title>JQuery Validation Example</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <style type="text/css">
        #errorContainer {
            display: none;
            overflow: auto;
            background-color: #FFDDDD;
            border: 1px solid #FF2323;
            padding-top: 0;
        }

        #errorContainer label {
            float: none;
            width: auto;
        }

        input.error {
            border: 1px solid #FF2323;
        }

    </style>
</head>
<body>

<div id="errorContainer">
    <p>Please correct the following errors and try again:</p>
    <ul />
</div>

<div>
    <form id="myForm">
        <p>
            Gender:
            <label for="male">Male</label>
            <input type="radio" name="gender" id="male" class="target" title="Please enter your gender.">
            <label for="female">Female</label>
            <input type="radio" name="gender" id="female" class="target" title="Please enter your gender.">

        </p>
        <p>
            <label for="firstName">First Name:</label>
            <input id="firstName" name="firstName" class="target" title="Please enter your first name." ></input>
        </p>
        <p>
            <label for="lastName">Last Name:</label>
            <input id="lastName" name="lastName" class="target" title="Please enter your last name." ></input>
        </p>
        <p>
            <label for="age">Age:</label>
            <input id="age" name="age" class="target" title="Please enter your age." ></input>
        </p>
        <p>
            <input type="submit" value="Submit" />
        </p>
    </form>
</div>

<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>
<script src="js/jquery.bt.min.js" type="text/javascript" charset="utf-8"></script>

<link href="css/jquery.bt.css" rel="stylesheet" type="text/css">




<script type="text/javascript">
    $(function(){

        $('#firstName').bt();
        $('#lastName').bt();
        $('#age').bt();
        $('#male').bt();
        $('#female').bt();

        $('#myForm').validate({
            rules: {
                firstName: "required",
                lastName: "required",
                gender: "required",
                age: {
                    required: true,
                    range: [18,70]
                }
            },
            messages: {
                firstName: "Please enter your first name.",
                lastName: "Please enter your last name.",
                gender: "Please enter your gender.",
                age: {
                    required: "Please enter your age.",
                    range: "Your age must be between 21 and 55."
                }
            },
            errorContainer: $('#errorContainer'),
            errorLabelContainer: $('#errorContainer ul'),
            wrapper: 'li'
        });

    });
</script>
</body>
</html>