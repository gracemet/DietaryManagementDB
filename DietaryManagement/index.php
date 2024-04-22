<!-- 
Final Project | Due: 
By: Matthew Wooten, Chandler McCook, Grace Metri
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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="script.js"></script>
  <link id="tab-icon" rel="shortcut icon" type="image/x-icon" href="Images/SpoonFork.png" />
</head>

<body>
  <!-- Nav bar -->
  <ul id="nav">
    <li><a style="padding:2px 2px;" href="index.php" target="_self" fetchpriority="high"><img src="Images/SpoonFork.png"
          style="height:60px;display:block;filter:brightness(0) invert(1);"></a></li>
    <li><a href="menu.php" target="_self">Menu</a></li>
    <li><a href="about.html" target="_self">About Us</a></li>
    <li><a href="login.php" target="_self" style="float:right;">Login</a></li>
  </ul>

  <br> <!-- Nav bar end -->

  <?php

  function generateIDCard($name) {
    $conn = $GLOBALS['conn'];
    $sql = "SELECT P_id, Fname, Minit, Lname, Diet FROM PATIENT WHERE Fname='{$name}'";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
    $pid = $row['P_id'];
    $diet = $row['Diet'];
    echo "<div class='column'> <b>{$row['Fname']} {$row['Minit']}. {$row['Lname']}</b>";

    $sql = "SELECT PI_Ingid FROM PATIENT_INGREDIENT WHERE PI_Pid = '{$pid}';";
    $result = mysqli_query($conn, $sql);
    $size = mysqli_num_rows($result);

    echo "<br>Allergies: ";
    $aList = [];
    while($row = mysqli_fetch_assoc($result))
    {
      array_push($aList, $row["PI_Ingid"]);
    }

    foreach($aList as $i => $x)
    {
      if($size != $i+1)
        echo $x. ", ";
      else
        echo $x;
    }

    echo "<br><br>Meal Options: ";
    $sql = "SELECT F_id FROM FOOD WHERE  (Prepared>0) 
    AND F_id = ANY (SELECT DF_Fid FROM DIET_FOOD WHERE DF_Dname = '{$diet}') 
    AND NOT F_id = ANY (SELECT FI_Fid FROM FOOD_INGREDIENT WHERE FI_Ingid = ANY (SELECT PI_Ingid FROM PATIENT_INGREDIENT WHERE PI_Pid = '{$pid}'));";
    $result = mysqli_query($conn, $sql);
    $size = mysqli_num_rows($result);
    $aList = [];
    while($row = mysqli_fetch_assoc($result))
    {
      array_push($aList, $row["F_id"]);
    }

    foreach($aList as $i => $x)
    {
      if($size != $i+1)
        echo $x. ", ";
      else
        echo $x;
    }

    echo "<br>Add Ons: ";
    $sql = "SELECT A_id FROM ADDON WHERE
    A_id = ANY (SELECT DA_Aid FROM DIET_ADDON WHERE DA_Dname = '{$diet}');";
    if($diet == "Normal" || $diet == "Vegetarian")
    {
      $sql = "SELECT A_id FROM ADDON;";
    }

    $result = mysqli_query($conn, $sql);
    $size = mysqli_num_rows($result);
    $bList = [];


    while($row = mysqli_fetch_assoc($result))
    {
      array_push($bList, $row["A_id"]);
    }

    foreach($bList as $i => $x)
    {
      if($size != $i+1)
        echo $x. ", ";
      else
        echo $x;
    }


    echo "</div>";
    echo "<div class='column' style='float:right;'>
    <b>Diet:</b>
    {$diet}
    </div>";

  }


  $servername = "localhost";
  $user = "root";
  $pass = "";
  $database = "diet_management";

  // Create connection
  $conn = new mysqli($servername, $user, $pass, $database);
  if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }

  $sql = "SELECT Fname FROM PATIENT ORDER BY Fname;";
  $result = mysqli_query($conn, $sql);
  
  echo "<div id='wholeSelection'> <div id='leftSelection'> <div id='leftSelectDiv'>";
  echo "<h1>PATIENT:</h1>";
  echo "</div> </div>";

  echo "<div id='rightSelection'>";
  echo "<div id='divSelection'>";

  echo "<select id='selectDrop' name='supplier'>;";
  echo "<option value=''>--SELECTPATIENT--</option>";
  $columns = mysqli_query($conn, $sql);
  while ($row = mysqli_fetch_assoc($columns)) {
           foreach ($row as $value)
           echo "<option value='$value'>$value</option>";
       }
  echo "</select>";
  echo "</div> </div> </div>";

  echo "<div>";
  $columns = mysqli_query($conn, $sql);
  while ($row = mysqli_fetch_assoc($columns)) {
    foreach ($row as $value) {
      echo "<div class='patient-info $value' 
      style='padding: 30px;  
           margin-top: 30px; 
           width: 40%;
           text-align: left;
           margin-right: auto;
           margin-left: auto;
           border-radius: 15px;   
           background:lightblue;
           display:none;
           '
           >"; 
      generateIDCard($value);

      echo "</div>";
    }
}   
  echo "</div>"; 
  
  // MATT: I just move this to the script file. If it doesn't work, just uncomment it out.
  // echo "<script type='text/javascript'> 
    // $(document).ready(function() { 
    //     $('select').on('change', function() {
    //         $(this).find('option:selected').each(function() {
    //             var name = $(this).attr('value');
    //             if (name) {
    //                 $('.patient-info').not('.' + name).hide();
    //                 $('.' + name).show();
    //             } else {
    //                 $('.patient-info').hide();
    //             }

    //         });
    //     }).change();
    // });
    // </script>";

  ?>
</body>
</html>