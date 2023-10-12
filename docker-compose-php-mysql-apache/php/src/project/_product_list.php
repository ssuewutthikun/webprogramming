<div id="content">

</div>

<script type=text/javascript>
    function getProductList(){
        //alert("MygetProductList");
        let innerhtml = "";
        let uri="http://localhost:8080/project/api/get_product_list.php";
        $.ajax({
            type:"POST",
            url:uri,
            data:null,
            async:false,
            success:function(response){
                if(response.result===1){
                    for(let i =0;i<response.datalist.length;i++){
                        innerhtml = innerhtml + `
                        <div class='col-md-3 mb-3' >
                            <div class='card' style='background-color: #FFF;margin:5px'>
                                <div class='card-image' style='width:150px;height:150px;align-items: center;'>
                                    <img src='./assets/images/product-default.png' class='card-img-top' />
                                </div>
                                <div class='card-content'>
                                    <h5 class='card-title'>`+response.datalist[i].pname+`</h5>
                                    <p class='card-text'>รายละเอียดสินค้า <br>`+response.datalist[i].detail+`</p>
                                    <p class='card-text'>ราคา: `+response.datalist[i].price+` บาท</p>
                                    <button  class='btn btn-danger' onclick='addCart()' >เพิ่มลงตะกร้า</button>
                                </div>
                            </div>
                        </div>                        
                        `;
                    }
                }else{
                    console.log(response);
                }
            },error:function(error){
                console.log(error);
            }
        });
        document.getElementById("content").innerHTML ="<div class='row' style='padding:10px'>"+innerhtml+"</div>";
    }
    function addCart(){
        alert("addItem");
    }
</script>