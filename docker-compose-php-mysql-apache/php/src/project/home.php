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
            <!--- content -->
            <div id="content">
                <div class="row" style="padding:10px">
                    <div class="col-md-3 mb-3">
                        <div class="card" style="background-color: #FFF;margin:5px">
                            <div class="card-image" style="width:150px;height:150px;align-items: center;">
                                <img src="./assets/images/product-default.png" class="card-img-top" />
                            </div>
                            <div class="card-content">
                                <h5 class="card-title">ชื่อสินค้า 1</h5>
                                <p class="card-text">รายละเอียดสินค้า 1</p>
                                <p class="card-text">ราคา: ราคาสินค้า 1</p>
                                <button  class="btn btn-danger">เพิ่มลงตะกร้า</button>                                    
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 mb-3">
                        <div class="card" style="background-color: #FFF;margin:5px">
                            <div class="card-image" style="width:150px;height:150px;align-items: center;">
                                <img src="./assets/images/product-default.png" class="card-img-top" />
                            </div>
                            <div class="card-content">
                                <h5 class="card-title">ชื่อสินค้า 2</h5>
                                <p class="card-text">รายละเอียดสินค้า 2</p>
                                <p class="card-text">ราคา: ราคาสินค้า 2</p>
                                <button  class="btn btn-danger">เพิ่มลงตะกร้า</button>                                    
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--<footer style="background-color: pink;">
        <p>Footer</p>
    </footer>-->
</body>
</html>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script type=text/javascript>
    getProductList();
    function getProductList(){
        let uri = "http://localhost:8080/project/api/get_product_list.php";
        $.ajax({
            type:"POST",
            url:uri,
            async:false,
            data:null,
            success:function(response){
                console.log(response);
            },error:function(error){
                console.log(error);
            }
        });
    }
</script>
