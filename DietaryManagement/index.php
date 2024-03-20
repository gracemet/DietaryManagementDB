<!-- 
Final Project | Due: 
By: Matthew Wooten, Chandler McCook, Grace Metri, Alex Larabie, Scott Hartsell
Description: Dietary Management Database App used by Doctors, Nurses, and 
             Patients to find who can eat what foods under certain
             dietary restrictions and the hospital's inventory.
-->


<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width">
  <title>Dietary Management Database</title>
  <link href="style.css" rel="stylesheet" type="text/css" />
  <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <!-- <script src="slideshow.js"></script> -->
  <script src="script.js"></script>
  <!-- <link id="tab-icon" rel="shortcut icon" type="image/x-icon" href="Images/logo.png" /> -->
  <!-- <link rel="preload" id="navBarPic" type="image" href="Images/logoAndName.png" /> -->
 

</head>

<body>
  <!-- Nav bar -->
  <ul id="nav">
    <!-- <li><a style="padding:2px 2px;" href="index.html" target="_self" fetchpriority="high"><img
          src="Images/logoAndName.png" style="height:60px;display:block;"></a></li> -->
    <li><a href="login.php" target="_self">Login</a></li>
    <li><a href="index.php" target="_self">Index</a></li>
    <li><a href="about.html" target="_self">About Us</a></li>
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

  $sql = "SELECT * FROM PATIENT;";
  $result = mysqli_query($conn, $sql);
  $size = mysqli_num_rows($result);

  echo "<table>";
        $sql = "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='PATIENT'";
        $columns = mysqli_query($conn, $sql);

        echo "<tr>";
        while ($row = mysqli_fetch_assoc($columns)) {
            foreach ($row as $value)
                echo "<th>" . $value . "</th>";
        }
        echo "</tr>";

        while ($row = mysqli_fetch_assoc($result)) {
            echo "<tr>";
            foreach ($row as $value) {
                echo "<td>" . $value . "</td>";
            }
            echo "</tr>";
        }
        echo "</table>";
        echo "<br>";

  ?>

</body>

</html>