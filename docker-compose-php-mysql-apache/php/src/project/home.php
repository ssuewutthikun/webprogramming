<?php
    ob_start();
    session_start();
    require "config/config_db.php";
    $strSQL="SELECT id,name FROM customer WHERE session ='".session_id()."' ";
    $query = @mysqli_query($conn,$strSQL);
    $resultQuery = @mysqli_fetch_array($query);
    if(@$resultQuery['id']!=""){
        //print_r("show form");
    }else{
        //print_r("go to login");
        @mysqli_close($conn);
        header("location: http://localhost:8080/project/login.php");
        exit;
    }
    ob_end_flush();
?>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="./css/main_style.css">
</head>
<body>
    <header style="background-color: yellow;">
        <h1>Header</h1>
    </header>

    <div class="row" style="background-color: green;">
        <nav class="column menu" style="background-color: lightcyan;">
            <h2>Menu</h2>
            <ul>
                <li><a href="#">Menu 1</a></li>
                <li><a href="#">Menu 2</a></li>
                <!-- Add more menu items here -->
            </ul>
        </nav>
        <div class="column content" style="background-color: burlywood;">
            content
        </div>
    </div>

    <footer style="background-color: pink;">
        <p>Footer</p>
    </footer>
</body>
</html>
