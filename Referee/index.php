<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin - Dashboard</title>

    <!-- Bootstrap core CSS-->
    <link href="Referee/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="Referee/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="Referee/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="Referee/css/sb-admin.css" rel="stylesheet">
<!--    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>-->
      <!-- Bootstrap core JavaScript-->
    <script src="Referee/vendor/jquery/jquery.min.js"></script>
    <script src="Referee/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="Referee/vendor/jquery-easing/jquery.easing.min.js"></script>

    

    <!-- Custom scripts for all pages-->
    <script src="Referee/js/sb-admin.min.js"></script>

    <!-- Demo scripts for this page-->
    <script src="Referee/js/RefereeData.js"></script>
    <script src="Referee/js/jquery.fixedtableheader.min.js"></script>
    <script src="Referee/js/jquery.inview.min.js"></script>

  </head>

  <body id="page-top">

    <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

      <a class="navbar-brand mr-1" href="Referee/index.html">Referee Dashboard</a>

      <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="Referee/#">
        <i class="fas fa-bars"></i>
      </button>

      <!-- Navbar Search -->
      <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
        <div class="input-group">
          <input type="text" class="form-control" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
          <div class="input-group-append">
            <button class="btn btn-primary" type="button">
              <i class="fas fa-search"></i>
            </button>
          </div>
        </div>
      </form>

      <!-- Navbar -->
      <ul class="navbar-nav ml-auto ml-md-0">
        <li class="nav-item dropdown no-arrow mx-1">
          <a class="nav-link dropdown-toggle" href="Referee/#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-bell fa-fw"></i>
            <span class="badge badge-danger">9+</span>
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="alertsDropdown">
            <a class="dropdown-item" href="Referee/#">Action</a>
            <a class="dropdown-item" href="Referee/#">Another action</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="Referee/#">Something else here</a>
          </div>
        </li>
        <li class="nav-item dropdown no-arrow mx-1">
          <a class="nav-link dropdown-toggle" href="Referee/#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-envelope fa-fw"></i>
            <span class="badge badge-danger">7</span>
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="messagesDropdown">
            <a class="dropdown-item" href="Referee/#">Action</a>
            <a class="dropdown-item" href="Referee/#">Another action</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="Referee/#">Something else here</a>
          </div>
        </li>
        <li class="nav-item dropdown no-arrow">
          <a class="nav-link dropdown-toggle" href="Referee/#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-user-circle fa-fw"></i>
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
            <a class="dropdown-item" href="Referee/#">Settings</a>
            <a class="dropdown-item" href="Referee/#">Activity Log</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="Referee/#" data-toggle="modal" data-target="#logoutModal">Logout</a>
          </div>
        </li>
      </ul>

    </nav>

    <div id="wrapper">

      <!-- Sidebar -->
      <ul class="sidebar navbar-nav">
        <li class="nav-item active">
          <a class="nav-link" href="Referee/index.html">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span>
          </a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="Referee/#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-fw fa-folder"></i>
            <span>Pages</span>
          </a>
          <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <h6 class="dropdown-header">Quick Access:</h6>
            <a class="dropdown-item" href="Referee/login.html" target="_blank">Export to PDF</a>
            <a class="dropdown-item" href="Referee/register.html">Search Athletes</a>
            <a class="dropdown-item" href="Referee/forgot-password.html">Forgot Password</a>
            <div class="dropdown-divider"></div>
            <h6 class="dropdown-header">Other Pages:</h6>
            <a class="dropdown-item" href="Referee/404.html">Display Disqualified</a>
            <a class="dropdown-item" href="?action=view_administered" target="_blank">Administered Penalties</a>
          </div>
        </li>

      </ul>

      <div id="content-wrapper">

        <div class="container-fluid">

          <!-- Breadcrumbs-->
          <ol class="breadcrumb">
            <li class="breadcrumb-item">
              <a href="Referee/#">Dashboard</a>
            </li>
            <li class="breadcrumb-item active">Overview</li>
          </ol>

          <!-- Icon Cards-->
          <div class="row">
            <div class="col-xl-3 col-sm-6 mb-3">
              <div class="card text-white bg-primary o-hidden h-100">
                <div class="card-body">
                  <div class="card-body-icon">
                    <i class="fas fa-fw "></i>
                  </div>
                    <div class="mr-5"><span id="ds_all_pen">0</span> New penalties</div>
                </div>
                
              </div>
            </div>
            <div class="col-xl-3 col-sm-6 mb-3">
              <div class="card text-white bg-warning o-hidden h-100">
                <div class="card-body">
                  <div class="card-body-icon">
                    <i class="fas fa-fw "></i>
                  </div>
                    <div class="mr-5"><span id="tent_a">0</span> New Tent A penalties</div>
                </div>
                
                </a>
              </div>
            </div>
            <div class="col-xl-3 col-sm-6 mb-3">
              <div class="card text-white bg-success o-hidden h-100">
                <div class="card-body">
                  <div class="card-body-icon">
                    <i class="fas fa-fw "></i>
                  </div>
                    <div class="mr-5"><span id="tent_b">0</span> New tent B penalties</div>
                </div>
                
              </div>
            </div>
            <div class="col-xl-3 col-sm-6 mb-3">
              <div class="card text-white bg-danger o-hidden h-100">
                <div class="card-body">
                  <div class="card-body-icon">
                    <i class="fas fa-fw "></i>
                  </div>
                    <div class="mr-5"><span id="disq">0</span> New Disqualifications!</div>
                </div>
                
              </div>
            </div>
          </div>

          <!-- Area Chart Example-->
          <div class="card mb-3">
            <div class="card-header">
              <i class="fas fa-table"></i>
              Administer Racer Penalty</div>
              
              <div style="width:80%; margin: auto;padding: 10px;">
                  <input type="number" name="" placeholder="Enter Racer ID" id="rider_no"> <input type="button" value="Find Racer" id="btnAdminPenalty" onclick="TestHaich()">
                  <div class="non_affected">
                      <p id="lblreason"></p>
                  </div>
                  
                  <div id="penalty_box">
                      
                  </div>
              </div>
            
          </div>

          <!-- DataTables Example -->
          <div class="card mb-3" style="overflow-y: scroll;">
            <div class="card-header">
              <i class="fas fa-table"></i>
              Your penalty box <div style="width: 30%;margin: auto;padding: 10px; display: inline;"><input type="text" id="ath_finder" placeholder="Search penalty box"></div><span class="right_text">Last Refreshed: <span id="last_ref"></span></span></div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                 <tr><th>Athlete Details</th><th>Penalty Due:</th><th>Reasons:</th><th>Tent:</th><th>Arrived?</th></tr>
                </table>
              </div>
            </div>
              <div class="card-footer small text-muted">Data is automatically added </div>
          </div>
          
          <!-- For deleted folks -->
          <div class="card mb-3">
            <div class="card-header">
              <i class="fas fa-table"></i>
              Disqualified Athletes  <span class="right_text">Last Refreshed: <span id="last_ref"></span></span></div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="delPeople" width="100%" cellspacing="0">
                    <tr><th>Athlete: </th><th>Reason: </th></tr>
                </table>
              </div>
            </div>
            <div class="card-footer small text-muted">Data is automatically added</div>
          </div>

        </div>
        <!-- /.container-fluid -->

        <!-- Sticky Footer -->
        <footer class="sticky-footer">
          <div class="container my-auto">
            <div class="copyright text-center my-auto">
              <span>Another one! By Codecentrix</span>
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

  
    

  </body>

</html>
