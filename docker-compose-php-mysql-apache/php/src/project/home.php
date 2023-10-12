<?php
    ob_start();
    session_start();
    require "config/config_db.php";
    $strSQL="SELECT id,name FROM customer WHERE session = '".session_id()."' ";
    $query = @mysqli_query($conn,$strSQL);
    $resultQuery = @mysqli_fetch_array($query);
    print_r($resultQuery);
    if($resultQuery['id']!=""){
        //print_r("show form");
    }else{
        //print_r("go to login.php");
        @mysqli_close($conn);
        header("location: http://127.0.0.1:8080/project/login.php");
        exit;
    }
    ob_end_clean();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="./css/main_style.css">
</head>
<body onload="getEnvironment()">
    <header style="background-color: yellow;">
        <h1>Header</h1>
        <div align="right">
            <i class="fa fa-shopping-cart" style="font-size:22px"></i>
            [<label id="num_cart">88</label>]
            <label id="customer_profile_name">customer_name</label>
            <input type="hidden" id="customer_profile_id"/>
            <input type="hidden" id="customer_profile_email"/>
        </div>
    </header>

    <div class="row" style="background-color: green;">
        <nav class="column menu" style="background-color: lightcyan;">
            <h2>Menu</h2>
            <ul>
                <li><a href="./home.php?menu=productlist">Menu 1</a></li>
                <li><a href="./home.php?menu=xxx">Menu 2</a></li>
                <!-- Add more menu items here -->
            </ul>
        </nav>
        <div class="column content" style="background-color: burlywood;">
            <?php
                if(@$_GET['menu']==="productlist"){
                    include "_product_list.php";
                }else{

                }
            ?>
            <!--- content -->
        </div>
    </div>

    <!--<footer style="background-color: pink;">
        <p>Footer</p>
    </footer>-->
</body>
</html>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script type=text/javascript>
    function getEnvironment(){
        let customer_profile = localStorage.getItem("customer_profile");
        customer_profile = JSON.parse(customer_profile);
        console.log(customer_profile.email);  
        console.log(customer_profile.name);    
        document.getElementById("customer_profile_name").innerHTML =  customer_profile.name;
        //code here
        getProductList();
    }


</script>
