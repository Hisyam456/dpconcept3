<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" EnableEventValidation="false" %>

<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Design and Packaging Concept</title>
        <link rel="shortcut icon" type="image/ico" href="images/favicon.ico" />

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/4-col-portfolio.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    <style>
    @media (max-width:480px) {
              .text{
           display:none;
          }
              .footer
              {
                  display: none;
              }
           }
           @media (min-width:980px) {
           .col-md-4
           {
            margin-right: 33%;
           }
           
         }
        @media only screen and (min-width : 481px) and (max-width : 767px) {
            .footer
            {
                display: none;
            }
        }

         @media only screen 
and (min-width : 768px) 
and (max-width : 991px) 
        {
            .col-sm-6
            {
                width: 100%; 
            }
            .footer
            {
                display: none;
            }
            
        }
           @media only screen 
and (min-width : 991px) 
and (max-width : 1366px) 
           {
               .loginme
           {
               padding-top: 0px;
           }
           }
        @media (min-width:1367px) {
             .loginme
           {
               padding-top: 90px;
           }
        }
      #header-content {
    bottom: 0;
  }
  .text
  {
    border-right: 4px solid;
    text-align: -webkit-right;
    padding-top: 300px;
    margin-right: 30px;
  }
  .product
  {
    margin-bottom: 30px;
  }
  .form-control
  {
    margin-top: 20px;
    margin-bottom: 20px
  }
  .desc
  {
    padding-top: 100px;
  }
  .controls
  {
    text-align: center;
  }
  .menucontrol
  {
    margin-right: 30px;
  }
  .client
  {
    margin-bottom: 20px;
  }
  .img-responsive
  {
    width: 100%;
  }
  .box
  {
    padding: 0;
  }
  .col-xs-text
  {
    width: 20%;
  }
  .col-xs-input
  {
    width: 80%;
  }
  .btn-outlined {
      border-radius: 0;
      -webkit-transition: all 0.3s;
         -moz-transition: all 0.3s;
              transition: all 0.3s;
  }
  .btn-outlined.btn-primary {
      background: none;
      border: 3px solid #428bca;
      color: #428bca;
  }
  .btn-outlined.btn-primary:hover,
  .btn-outlined.btn-primary:active {
      color: #FFF;
      background: #428bca;
      border-color: #428bca:
  }

  .btn-outlined.btn-success {
      background: none;
      border: 3px solid #5cb85c;
      color: #5cb85c;
  }
  .btn-outlined.btn-success:hover,
  .btn-outlined.btn-success:active {
      color: #FFF;
      background: #47a447;
  }

  .btn-outlined.btn-info {
      background: none;
      border: 3px solid #5bc0de;
      color: #5bc0de;
  }
  .btn-outlined.btn-info:hover,
  .btn-outlined.btn-info:active {
      color: #FFF;
      background: #39b3d7;
  }

  .btn-outlined.btn-warning {
      background: none;
      border: 3px solid #f0ad4e;
      color: #f0ad4e;
  }
  .btn-outlined.btn-warning:hover,
  .btn-outlined.btn-warning:active {
      color: #FFF;
      background: #ed9c28;
  }

  .btn-outlined.btn-danger {
      background: none;
      border: 3px solid #d9534f;
      color: #d9534f;
  }
  .btn-outlined.btn-danger:hover,
  .btn-outlined.btn-danger:active {
      color: #FFF;
      background: #d2322d;
  }
  .col-md-12
  {
    text-align: center;
    max-width: 500px;
      margin: auto;
  }

  </style>
  <script>
      /* Open when someone clicks on the span element */
      function openNav() {
          document.getElementById("myNav").style.width = "100%";
      }

      /* Close when someone clicks on the "x" symbol inside the overlay */
      function closeNav() {
          document.getElementById("myNav").style.width = "0%";
      }
  </script>
</head>

<body>
    <form id="form1" runat="server">
<div class="container">
    <!-- Navigation -->
    <header class="banner">
  <img class="header-logo"id="logo-main" src="images/logodpc.png" width="250" alt="Logo Thing main logo">
<nav id="navbar-primary" class="navbar navbar-default" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <p class="navbar-text visible-xs-inline-block">LOGIN</p>
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-primary-collapse" onclick="openNav()">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>
    <div class="collapse navbar-collapse" id="navbar-primary-collapse">
      <ul class="nav navbar-nav main">
          <li><a href="index.html">HOME</a></li>
          <li><a href="about-us.aspx">ABOUT US</a></li>
          <li><a href="products.html">PRODUCTS</a></li>
          <li><a href="awards.aspx">AWARDS</a></li>
          <li><a href="main-client.html">CLIENTELE</a></li>
          <li><a href="media.html">MEDIA</a></li>
          <li><a href="contact-us.html">CONTACT</a></li>
          <li class="active"><a href="Login.aspx">CLIENT LOGIN</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<div id="myNav" class="overlay">

    <!-- Button to close the overlay navigation -->
    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>

    <!-- Overlay content -->
    <div class="overlay-content">
        <img class="header-logo" id="logo-main" src="images/logodpc.png" width="250" alt="Logo Thing main logo">
        <br />
            <ul class="nav navbar-nav mobileview">
                <li><a href="index.html">HOME</a></li>
                <li><a href="about-us.aspx">ABOUT US</a></li>
                <li><a href="products.html">PRODUCTS</a></li>
                <li ><a href="awards.aspx">AWARDS</a></li>
                <li><a href="main-client.html">CLIENTELE</a></li>
                <li><a href="media.html">MEDIA</a></li>
                <li><a href="contact-us.html">CONTACT</a></li>
                <li class="active"><a href="Login.aspx">CLIENT LOGIN</a></li>
            </ul>
         </div>


</div>
</header><!-- header role="banner" -->

    <!-- Page Content -->


        <!-- Page Heading -->
        <!-- /.row -->

        <!-- Projects Row -->
        <div class="container">
            <div class="row">
                <div style="max-width: 500px; margin:auto" class="loginme">
                    <h1 class="text-center login-title" style="text-align: center">Client Login</h1>
                    <div class="account-wall">
                        <form class="form-signin">
                        <p> Email </p>
                            <asp:TextBox ID="txtEmail" class="form-control" runat="server"></asp:TextBox>
                        <p> Password </p>
                            <asp:TextBox ID="txtPass" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                            <div style="text-align: center">
                                <asp:Button ID="btnLogin" class="btn btn-outlined btn-warning" runat="server" Text="Sign In" OnClick="loginBtn_Click" />
                            </div>
      
                        </form>
                    </div>

               
               
                <p style="text-align:center; margin-top:50px"> To request for login credentials, kindly send a request under our “Contact Us” page </p>
                </div>
            </div>
        </div>

    </div>
        <div class="footer navbar-fixed-bottom" style="background-color: transparent; max-width: 1000px; margin:auto;">
        <!-- /.row -->
        <div class="row" style="max-width: 1000px; margin:auto">

            <div class="col-sm-5">
                <div class="row">
                   <p style="margin-left:15px;"><a style="color:gray" href="#">Privacy Policy</a> | <a style="color:gray" href="#"> Terms of Use</a> | <a style="color:gray" href="#"> Sitemap</a></p>
                    <p></p>
                    <p></p>
                </div>

            </div>

            <div class="col-sm-7 copyright-text text-center">
                <div class="copyright-text text-center">
                   <p>Copyright &copy;2016 DPC Packaging Pte Ltd . All Rights Reserved</p>
                </div>
            </div>
        </div>
    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
        </form>
</body>

</html>
