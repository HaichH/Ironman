<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin - Login</title>

    <!-- Bootstrap core CSS-->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="Referee/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template-->
    <link href="Referee/css/sb-admin.css" rel="stylesheet">
    
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="Referee/vendor/jquery-easing/jquery.easing.min.js"></script>

  </head>

  <body class="bg-dark">

    <div class="container">
      <div class="card card-login mx-auto mt-5">
        <div class="card-header">Login</div>
        <div class="card-body">
            <form action="index.php?action=login" method="POST">
            <div class="form-group">
              <div class="form-label-group">
                  <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required="required" name="email_add" autofocus="autofocus">
                <label for="inputEmail">Email address</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                  <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="password" required="required">
                <label for="inputPassword">Password</label>
              </div>
            </div>
            
                <input type="submit" class="btn btn-primary btn-block" value="Login" >
          </form>
            <p class="login_error">
                <?php 
                if(isset($invalid_user)){
                    echo 'Supplied credentials are incorrect, try again. ';
                }
                ?>
            </p>
          
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    

  </body>

</html>
