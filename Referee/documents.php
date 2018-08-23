<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Download Documents</title>

    <!-- Bootstrap core CSS-->
    <link href="Referee/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="Referee/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="Referee/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="Referee/css/sb-admin.css" rel="stylesheet">
    
     <!-- Bootstrap core JavaScript-->
    <script src="Referee/vendor/jquery/jquery.min.js"></script>
    <script src="Referee/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="Referee/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="Referee/js/sb-admin.min.js"></script>
    <script src='Referee/js/pdfmake.min.js'></script>
    <script src='Referee/js/vfs_fonts.js'></script>
    
<!--Temporariry stylesheet -->
<style>
    .card_holder{
        overflow: hidden;
        width: 100%;
        margin: 30px;
    }
.card {
    overflow: hidden;
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
    transition: 0.3s;
    width: 30%;
    border-radius: 5px;
    float: left;
    margin: 5px;
}

.card:hover {
    box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

img {
    border-radius: 5px 5px 0 0;
    margin: auto;
    padding: 3px;
}

.container {
    padding: 2px 16px;
}
</style>
  </head>

  <body id="page-top">

    <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

      <a class="navbar-brand mr-1" href="Referee/index.html">Documents</a>

      <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="Referee/#">
        <i class="fas fa-bars"></i>
      </button>

      <!-- Navbar Search -->
      

      <!-- Navbar -->
      <ul class="navbar-nav ml-auto ml-md-0">
     
        <li class="nav-item dropdown no-arrow">
          <a   style="float: right;" class="nav-link dropdown-toggle" href="Referee/#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-user-circle fa-fw"></i>
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
           
            <a class="dropdown-item" href="Referee/#" data-toggle="modal" data-target="#logoutModal">Logout</a>
          </div>
        </li>
      </ul>

    </nav>

    <div id="wrapper">

      <!-- Sidebar -->
      <ul class="sidebar navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="Referee/?action=dashboard">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span>
          </a>
        </li>
        
       
       
      </ul>

      <div id="content-wrapper">

        <div class="container-fluid">

          <!-- Breadcrumbs-->
          <ol class="breadcrumb">
            <li class="breadcrumb-item">
              <a href="Referee/index.html">Dashboard</a>
            </li>
            <li class="breadcrumb-item active">Documents</li>
          </ol>

          <!-- Page Content -->
          
          <h1>Find the document you're looking for</h1>
          <h5>Documents will auto-download (might take a little while)</h5>
          <div class="card_holder">
              <!--Make cards, to advertise each document seperately-->
              <div class="card">
                  <img src="Referee/pdf.png" alt="Avatar" style="width:80%">
                  <!--For Administered penalties -->
                  <div class="container">
                      <h4>Administered Penalties <span>(Download)</span></h4> 
                    <p>Get a list of athletes who have served their penalties</p>
                    <div onclick=""><span class="fa fa-download"></span></div>
                  </div>
              </div>
              
              <div class="card">
                  <img src="Referee/pdf.png" alt="Avatar" style="width:50%">
                  <!--For Disqualified penalties -->
                  <div class="container">
                    <h4><b>Disqualified Athletes <span>(Download)</span></b></h4> 
                    <p>Get a list of athletes who have been eliminated </p>
                    <div onclick=""><span class="fa fa-download"></span></div>
                  </div>
              </div>
              
              <div class="card">
                  <img src="Referee/pdf.png" alt="Avatar" style="width:50%">
                  <!--For most up to date un-administered penalties -->
                  <div class="container">
                      <h4><b>UN-Administered Penalties <span>(Download)</span></b></h4> 
                    <p>Get a list of athletes still going to serve a penalty</p>
                    <div onclick="getUnAdministered()"><span class="fa fa-download"></span></div>
                  </div>
              </div>
              
              <div class="card">
                  <img src="Referee/pdf.png" alt="Avatar" style="width:50%">
                   <!-- For a specific athlete -->
                   <div class="container">
                    <h4><b>Get Athlete History</b></h4>
                    <input type="number" placeholder="Athlete ID" name="ath_id"> <input type="button" value="Search">
                    <p>Enter Athlete number above and get athletes entire history</p>
                    <div onclick=""><span class="fa fa-download"></span></div>
                   </div>
              </div>
              
          </div>
        </div>
        <!-- /.container-fluid -->

        <!-- Sticky Footer -->
        <footer class="sticky-footer">
          <div class="container my-auto">
            <div class="copyright text-center my-auto">
              <span>Another one by CodeCentrix</span>
            </div>
          </div>
        </footer>

      </div>
      <!-- /.content-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="Referee/#page-top">
      <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary" href="Referee/login.html">Logout</a>
          </div>
        </div>
      </div>
    </div>

    <script>
        //Will later move this script to the main javascript repository 
        function getAdministered(){
            
        }
        
        function getDisqualified(){
            
        }
        
        function getUnAdministered(){
            //RacerID	RacerSurname	PenaltyTime	TicketID	TicketName
            //4444	Legodi          08:59:53.0000000  3             Blue
        var dd = {
        content: [
          {

            table: {
              // headers are automatically repeated if the table spans over multiple pages
              // you can declare how many rows should be treated as headers
              headerRows: 1,
              widths: [ '*', '*','*', '*' ],

              body: [

                
                [ "Racer ID", "Racer Surname", "Penalty Time", "Ticket Name" ],
                <?php for($i =0; $i< count($un_admin);$i++): ?>
             <?php    echo '["'.$un_admin[$i][0].'","'.$un_admin[$i][1].'","'.$un_admin[$i][2].'","'.$un_admin[$i][4].'"],'; ?>                        
                <?php endfor; ?>
        ]
      }
    }
  ]
}; 
       pdfMake.createPdf(dd).download('compile.pdf');	
       }
        
        function getAthleteHistory(){
            
        }
    </script>
    
    <script>
        //This script is to call the methods and auto-download the content as if it the page didn't make a postback
    </script>
    
  </body>

</html>
