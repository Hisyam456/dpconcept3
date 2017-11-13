<%@ Page Language="C#" AutoEventWireup="true" CodeFile="product-view.aspx.cs" Inherits="product_view" %>

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
           .mobile {
               margin: auto;
               width: 90%;
           }
           .itemshelve {
               width: 100%;
           }

           .frameborder {
                 height: auto !important;
               width: auto !important;
               padding-bottom: 20px;
           }
            
            .text{
                display:none;
            }
            img
            {
                padding-bottom: 15px;
            }
            .row
            {
                padding: 0;
            }
           
            .product
            {
                padding: 0;
            }
            .footer
            {
                display: none;
            }
              .crop-container{
                width: 150px;
                height: 150px;
                overflow: hidden;
            }
            .crop-container img {
                padding-right: 20px;
                padding-left: 15px;
                padding-top: 17px;
            }
        }
        @media only screen and (min-width : 481px) and (max-width : 766px) {
           .mobile {
               margin: auto;
               width: 90%;
           }
           .itemshelve {
               width: 100%;
           }

           .frameborder {
               height: auto !important;
               width: auto !important;
                   padding-bottom: 20px;
           }
            
            .text
            {
                display: none; 
            }

            img
            {
                
                padding-bottom: 15px;
            }
            .main
            {
                display: none;
            }

            .mobile
            {
                max-width: 500px; 
                margin: auto;
            }
            .product
            {
                padding: 0;
            }
            .footer
            {
                display: none;
            }
        }

        @media only screen and (min-width : 768px) and (max-width : 991px) {
            .mobile {
               margin: auto;
               width: 90%;
           }
           .itemshelve {
               width: 100%;
           }

           .frameborder {
               height: auto !important;
               width: auto !important;
               padding-bottom: 20px;
           }
            .text
            {
                display: none;
            }
            img
            {
                
                padding-bottom: 15px;
            }
            .product
            {
                text-align: -webkit-center; 
                padding: 0;
            }

            .mobile
            {
                max-width: 500px; 
                margin: auto;
            }
            .footer
            {
                display: none;
            }
        }
        @media (min-width:992px) {
            
            .frameborder{
            margin-top: 10px;
        }
            .navbar-fixed-bottom {
                position: static !important;
            }
          .desk
          {
              width: 900px;
              height: 600px;
              overflow-y: scroll;
          }
           .cropper
           {
               position: absolute;
               clip: rect(11px,148px,146px,12px);
           }
            .col-md-9{
                width: 70%;
            }
            .img-responsive
            {
                max-width: 150px;
            }
            .product
            {
                margin-bottom: 30px;
            }
            .banner
            {
                padding-bottom: 10px;
            }
        }
        #header-content {
            bottom: 0;
        }
        .text
        {
            border-right: 4px solid;
            text-align: right;
            padding-top: 360px;
            margin-right: 30px;
            color: black;
        }
        .text a 
        {
            color: black;
        }
        
        #producttable {
                
                width: 90%;
        }
            #producttable tr td a img {
                height: 130px;
                width: 130px;
                position: absolute;
                vertical-align: middle;
                top: 15px;
                left: 15px;
            }

             
             #tablediv::-webkit-scrollbar { 
                display: none; 
                }

       
        .frameborder {
            width: 160px;
            height: 160px;
            background-image: url('/images/shelve-1.jpg');
            background-repeat: no-repeat;
            background-size: contain;     
            position: relative;
        }


        .mobile .itemshelve {
            display: inline-block;
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
<div class="container">
    <!-- Navigation -->
    <header class="banner">
  <img class="header-logo"id="logo-main" src="images/logodpc.png" width="250" alt="Logo Thing main logo">
  <nav id="navbar-primary" class="navbar navbar-default" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <p class="navbar-text visible-xs-inline-block"><asp:Label ID="catName" runat="server" Text=""></asp:Label></p>
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
        <li class="active"><a href="products.html">PRODUCTS</a></li>
        <li><a href="awards.aspx">AWARDS</a></li>
        <li><a href="main-client.html">CLIENTELE</a></li>
        <li><a href="media.html">MEDIA</a></li>
        <li><a href="contact-us.html">CONTACT</a></li>
        <li><a href="Login.aspx">CLIENT LOGIN</a></li>
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
                  <li class="active"><a href="products.html">PRODUCTS</a></li>
                  <li ><a href="awards.aspx">AWARDS</a></li>
                  <li><a href="main-client.html">CLIENTELE</a></li>
                  <li><a href="media.html">MEDIA</a></li>
                  <li><a href="contact-us.html">CONTACT</a></li>
                  <li><a href="Login.aspx">CLIENT LOGIN</a></li>
              </ul>
           </div>


  </div>
  </header><!-- header role="banner" -->

    <!-- Page Content -->


        <!-- Page Heading -->
        <!-- /.row -->

        <!-- Projects Row -->


         <div class="col-md-3 text">
              <a href="product-view.aspx?category=uniquemooncake"> <p <asp:Literal ID="Literal1" runat="server"></asp:Literal>>  Unique Mooncake Boxes </p> </a>
            <a href="product-view.aspx?category=standardmooncake"> <p <asp:Literal ID="Literal2" runat="server"></asp:Literal>>  Standard Mooncake Box </p> </a>
            <a href="product-view.aspx?category=pastry"> <p <asp:Literal ID="Literal3" runat="server"></asp:Literal>>  Cake &amp; Pastry </p> </a>
            <a href="product-view.aspx?category=festive"> <p <asp:Literal ID="Literal4" runat="server"></asp:Literal>>  Festives Gift Box </p> </a>
           <a href="product-view.aspx?category=tin"> <p <asp:Literal ID="Literal9" runat="server"></asp:Literal>>  Tin Boxes </p> </a>
             <a href="product-view.aspx?category=retail">  <p <asp:Literal ID="Literal6" runat="server"></asp:Literal>>  Retail &amp; Corporate </p> </a>     
            <a href="product-view.aspx?category=wine"> <p <asp:Literal ID="Literal7" runat="server"></asp:Literal>>  Wine / Chocolate</p> </a>
              <a href="product-view.aspx?category=others"> <p <asp:Literal ID="Literal8" runat="server"></asp:Literal>>  Others</p> </a>
         </div>
       
         <div class="col-md-9 mobile">
             <div id="tablediv" style="overflow-y:scroll;  max-height: 540px; display: none;">
            <asp:Table id="producttable" data-role="table" class="ui-responsive" runat="server" >
               
            </asp:Table>
           </div>
             <div class="desk">
             <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
             </div>
         </div>




        <!-- /.row -->

        <!-- Projects Row -->

        <!-- //col-lg-20 -->
      </div>

        <!-- /.row -->

        <hr>

        <!-- Pagination -->

        <!-- /.row -->

        <hr>

        <!-- Footer -->
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
    <script src="/js/jquery.js"></script>
    
    <script>
        
       
        $(window).resize(function () {
            if ($(window).height() < 830) {
                $(".navbar-fixed-bottom").css("position", "static");
            }
            else if ($(window).height() > 830) {
                $(".navbar-fixed-bottom").css("position", "absolute");
            }
        });

        var mac = navigator.platform.match(/(Mac|iPhone|iPod|iPad)/i) ? true : false;

        if (mac) {
            console.log("is mac");
            $(".navbar-fixed-bottom").css("position", "static");
        }
        else{
            $(".navbar-fixed-bottom").css("position", "absolute");
        }
        $('#producttable').stacktable();
      
    </script>
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>

