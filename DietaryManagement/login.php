<!-- 
Login.php
-->


<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>Dietary Management Database</title>
    <link href="style.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="script.js"></script>
    <link id="tab-icon" rel="shortcut icon" type="image/x-icon" href="Images/SpoonFork.png" />
</head>

<body>
    <!-- Nav bar -->
    <ul id="nav">
        <li><a style="padding:2px 2px;" href="index.php" target="_self" fetchpriority="high"><img
                    src="Images/SpoonFork.png" style="height:60px;display:block;filter:brightness(0) invert(1);"></a>
        </li>
        <li><a href="menu.php" target="_self">Menu</a></li>
        <li><a href="about.html" target="_self">About Us</a></li>
        <li><a href="login.php" target="_self" style="float:right;">Login</a></li>
    </ul>

    <br> <!-- Nav bar end -->

    <!-- Login Inputs -->
    <div id="loginWrapper">
        <form method="POST" id="LoginForm" action="">
            <h1>Login</h1>
            <div class="group">
                <input type="input" class="textbox" placeholder="Username" id="username" name="username" required />
                <label for="username" class="label">Username</label>
            </div>
            <div class="group">
                <input type="password" class="textbox" placeholder="Password" id="password" name="password"
                    id="password" required />
                <label for="password" class="label" id="passwordLabel">Password</label>
                <i id="togglePass" class="fa fa-eye-slash"></i>
            </div>
            <label for="visibleBox"></label>
            <br>
            <input type="submit" class="bttn" id="Login" name="Login" value="Login" style="color:white;" />
        </form>
        <form style="display:none;margin: 0 20px;" action="" method="POST" id="PatientForm">
            <h1>Add Patient</h1>
            <table id="AddPatient" style="width:75%">
                <tr>
                    <td><label for="fname">Name:</label></td>
                    <td colspan=2><input type="text" maxlength="15" id="fname" name="fname" style="width:110px;"
                            required>
                        <input type="text" maxlength="1" id="minit" name="minit" style="width:15px;" required>
                        <input type="text" maxlength="15" id="lname" name="lname" style="width:110px;" required>
                    </td>
                </tr>
                <tr>
                    <td><label for="diet">Diet:</label></td>
                    <td><select id="diet" name="diet">
                            <option value="Normal">Normal</option>
                            <option value="Bariatric">Bariatric</option>
                            <option value="Cardiac">Cardiac</option>
                            <option value="Low Sodium">Low Sodium</option>
                            <option value="Renal">Renal</option>
                            <option value="Vegetarian">Vegetarian</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="allergies">Dietary Restrictions:</label></td>
                    <td>
                        <select id="ingredientSelect" name="ingredientSelect[]" multiple>
                            <option value="">
                            <option value="Banana">Banana</option>
                            <option value="Bay Leaf">Bay Leaf</option>
                            <option value="Beef">Beef</option>
                            <option value="Beef Broth">Beef Broth</option>
                            <option value="Black Bean">Black Bean</option>
                            <option value="Black Pepper">Black Pepper</option>
                            <option value="Canola Oil">Canola Oil</option>
                            <option value="Carrot">Carrot</option>
                            <option value="Cayenne Pepper">Cayenne Pepper</option>
                            <option value="Celery">Celery</option>
                            <option value="Cheese">Cheese</option>
                            <option value="Chili Powder">Chili Powder</option>
                            <option value="Cucumber">Cucumber</option>
                            <option value="Cumin">Cumin</option>
                            <option value="Egg">Egg</option>
                            <option value="Feta Cheese">Feta Cheese</option>
                            <option value="Garlic">Garlic</option>
                            <option value="Green Bean">Green Bean</option>
                            <option value="Green Bell Pepper">Green Bell Pepper</option>
                            <option value="Greek Yogurt">Greek Yogurt</option>
                            <option value="Hamburger Bun">Hamburger Bun</option>
                            <option value="Honey">Honey</option>
                            <option value="Kidney Bean">Kidney Bean</option>
                            <option value="Lettuce">Lettuce</option>
                            <option value="Milk">Milk</option>
                            <option value="Olive">Olive</option>
                            <option value="Olive Oil">Olive Oil</option>
                            <option value="Onion">Onion</option>
                            <option value="Oregano">Oregano</option>
                            <option value="Paprika">Paprika</option>
                            <option value="Parsley">Parsley</option>
                            <option value="Parsnip">Parsnip</option>
                            <option value="Pasta">Pasta</option>
                            <option value="Peanut Butter">Peanut Butter</option>
                            <option value="Potato">Potato</option>
                            <option value="Protein Powder">Protein Powder</option>
                            <option value="Red Onion">Red Onion</option>
                            <option value="Red Wine">Red Wine</option>
                            <option value="Red Wine Vinegar">Red Wine Vinegar</option>
                            <option value="Salt">Salt</option>
                            <option value="Sliced Ham">Sliced Ham</option>
                            <option value="Spinach">Spinach</option>
                            <option value="Thyme">Thyme</option>
                            <option value="Tomato">Tomato</option>
                            <option value="Turkey">Turkey</option>
                            <option value="Vegetable Broth">Vegetable Broth</option>
                            <option value="White Bread">White Bread</option>
                            <option value="Worcestershire Sauce">Worcestershire Sauce</option>
                            <option value="Zucchini">Zucchini</option>
                        </select>
                    </td>
                    <td>
                        <form method='POST'><button type='submit' class='bttn' name='AddPatient'>Add Patient</button>
                        </form>
                    </td>
                </tr>
            </table>
        </form>
    </div>

    <!--Login Form End-->

    <?php

    $servername = "localhost";
    $user = "root";
    $pass = "";
    $database = "diet_management";

    // Create connection
    $conn = new mysqli($servername, $user, $pass, $database);
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // If login button is pressed, attempt login
    if (isset($_POST['Login'])) {
        $username = $_POST["username"];
        $password = $_POST["password"];

        // Search for user from login database.
        $sql = "SELECT * FROM `LoginInfo` WHERE `Username`=\"{$username}\" AND `Password`=\"{$password}\"";
        $result = mysqli_query($conn, $sql);

        // If account doesnt exist, display appropriate message
        if (mysqli_num_rows($result) == 0)
            echo "Account doesn't Exist!";
        else {
            // Else, hide login form and show add patient form
            echo '<script type="text/javascript">hideLogin(); showForm();</script>';
        }
    } else if (isset($_POST['AddPatient'])) {
        $fname = $_POST['fname'];
        $minit = $_POST['minit'];
        $lname = $_POST['lname'];
        $diet = $_POST['diet'];
        if(!empty($_POST['ingredientSelect']))
            $allergies = $_POST['ingredientSelect'];

        $sql = "INSERT INTO PATIENT(Fname, Minit, Lname, Diet) VALUES ('{$fname}', '{$minit}', '{$lname}', '{$diet}');";
        $result = mysqli_query($conn, $sql);

        $sql = "SELECT P_id FROM PATIENT";
        $result = mysqli_query($conn, $sql);
        $size = mysqli_num_rows($result);

        if (!empty($allergies)) {
            foreach ($allergies as $value) {
                $sql = "INSERT INTO PATIENT_INGREDIENT(PI_Pid, PI_Ingid) VALUES ({$size}, '{$value}');";
                $result = mysqli_query($conn, $sql);
            }
        }
    }
    ?>

</body>

</html>