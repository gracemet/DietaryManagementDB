<!-- 
Menu.php
-->


<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>Dietary Management Database</title>
    <link href="style.css" rel="stylesheet" type="text/css" />
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

    if(isset($_POST['OrderFood']))
    {
        $food = $_POST['OrderFood'];
        $sql = "UPDATE FOOD SET Prepared = Prepared-1 WHERE F_id = '{$food}';";
        $result = mysqli_query($conn, $sql);
    }

    $sql = "SELECT F_id, Prepared FROM FOOD WHERE (Prepared>0);";
    $result = mysqli_query($conn, $sql);
    $size = mysqli_num_rows($result);

    echo "<table style='margin-bottom:20px;'>";
    echo "<tr><th>Menu</th></tr>";

    while ($row = mysqli_fetch_assoc($result)) {
        echo "<tr>";
        echo "<td style='text-align:left;padding:10px;'><div class='column'><b>" . $row['F_id'] . "</b>";
        echo "Quantity: ". $row['Prepared'];
        echo "<br>Ingredients: ";

        // List of ingredients is displayed
        $sql = "SELECT FI_Ingid FROM FOOD_INGREDIENT WHERE FI_Fid = '{$row['F_id']}';";
        $res = mysqli_query($conn, $sql);
        $size = mysqli_num_rows($res);
        $aList = [];
        while($r2 = mysqli_fetch_assoc($res)) {
            array_push($aList, $r2["FI_Ingid"]);
        }

        foreach($aList as $i => $x) {
            if($size != $i+1)
                echo $x. ", ";
            else
                echo $x;
        }
        echo "</div>";

        // Order! Button HTML
        echo "<div class='column' style='float:right;'><form method='POST'><button type='submit' class='bttn' name='OrderFood' value='{$row['F_id']}' style='float:right;'>Order!</button></form></div></td>";
        echo "</tr>";
    }

  ?>

</body>
</html>