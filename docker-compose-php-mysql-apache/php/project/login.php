<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel ="stylesheet" type="text/css" href= "./css/main_style.css">
</head>
<body>   

    <div  class="row" align="center" >
        <div class="column content ">
            <div class="container" align="left">
                <div class="row justify-content-center">
                    <div class="col-4" style="background-color: pink; padding:10px; border-radius:25px" >
                        <div align = "center"><img src="assets/images/logo.png" width="200px" height="200px"/></div>
                        <h2>Form Login</h2>
                        <form id="fr_login" name="fr_login" >
                            <div class="form-group space_box">
                                <label for="username" class="form-label">Username</label>
                                <input type="text" class="form-control" id="username" placeholder="Enter username">
                            </div>
                            <div class="form-group space_box">
                                <label for="password">Password</label>
                                <input type="password" class="form-control" id="Password">
                            </div>
                            <div class="space box" align="center">
                                <button type="button" class="btn btn-primary" style="padding: 10px 20px 10px 20px" onclick="login()">Login</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer>
        <p> Footer </p>
    </footer>

</body>
</html>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<script>
    var z =30;
    function login(){
        let x = 10;
        y = 20;
        //alert("Call Login");
        console.log("Call login by console "+y);

        /**Swal.fire({
            title: 'Error!',
            text: 'Do you want to continue',
            icon: 'error',
            showCancelButton: true,
            confirmButtonText: 'Cool'
        });*/
    }
</script>