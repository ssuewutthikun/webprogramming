<?php ob_start(); ?>
<?php
    #header
    @header('Content-Type: application/json');
    @header("Access-Control-Allow-Origin: *");
    @header('Access-Control-Allow-Headers: X-Requested-With, content-type, access-control-allow-origin, access-control-allow-methods, access-control-allow-headers');
?>   
<?php
    #connection and data include  OR require
    require ("../config/config_db.php");
?>
<?php
    #input
    if($_SERVER["REQUEST_METHOD"] == "POST"){
        $content = @file_get_contents('php://input');
        $json_data = @json_decode($content, true);
        $inputCustomerId = trim($json_data["customer_id"]);
        $inputProductId = trim($json_data["product_id"]);
        $inputNum = trim($json_data["num"]);
        $inputPrice = trim($json_data["price"]);
        $total = $inputNum*$inputPrice;
        $sku=null;
    }else{
        ob_end_clean();
        @header("HTTP/1.0 412 Precondition Failed");
        die();         
    }
?>
<?php
    #process
    $strSQL="INSERT INTO  cart (customer_id,product_id,sku,num,price,total) VALUE ('".$inputCustomerId."','".$inputProductId."','".$sku."','".$inputNum."','".$inputPrice."','".$total."')";
    //print_r($strSQL);
    $query = @mysqli_query($conn,$strSQL);

    $strSQL="SELECT SUM(num) As snum,SUM(total) As stotal FROM cart WHERE customer_id='".$inputCustomerId."'";
    print_r($strSQL);
    $query = @mysqli_query($conn,$strSQL);
    $resultQuery = @mysqli_fetch_array($query);
    $snum=intval($resultQuery['snum']);
    $stotal=floatval($resultQuery['stotal']);
?>
<?php
    #output
    ob_end_clean();
    @mysqli_close($conn);
    if($query){
        echo $json_response = json_encode(array("result"=>1,"message"=>"พบข้อมูล","snum"=>$snum,"stotal"=>$stotal));
    }else{
        echo $json_response = json_encode(array("result"=>0,"message"=>"ไม่พบข้อมูล","snum"=>0,"stotal"=>0));
    }
?>
<?php
    #log function
?>
