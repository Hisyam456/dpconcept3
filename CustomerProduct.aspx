﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomerProduct.aspx.cs" Inherits="CustomerProduct" %>

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
    @media (max-width:400px) {
          .client
          {
            display: none;
          }
          h1
          {
            display: none;
          }
          .text{
           display:none;
            }
          .webcolumn
          {
            display: none;
          }
          .menucontrol
          {
            margin-right: 8px;
          }
          .mobilecolumn
          {
            display: block;
            text-align: center;
          }
          .row
          {
            margin: 0;
          }
          .container
          {
            padding: 0;
          }
          .col-md-12
          {
            padding: 0;
          }
          .borderbot
          {
            padding-bottom: 80px;
            border-bottom: 1px solid;
          }
          .desc
          {
            padding-top: 20px;
          }
          .footer
          {
              display: none;
          }
           }
           @media only screen
                   and (min-width : 401px)
                   and (max-width : 979px) {
                   /* Styles */
          .mobilecolumn
          {
            display: none;
          }
          h1
          {
            display: none;
          }
          .text
          {
            display: none;
          }
          .footer
          {
              display: none;
          }
          }
          @media (min-width:980px) {
            .client
            {
              padding-top: 140px;
            }
          .mobilecolumn
          {
          display: none;
          }
          .desc
          {
            padding-top: 100px;
          }
          .hiddenn
          {
          display: none;
          }
          .overlay{
              display: none;
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
  }
  .product
  {
    margin-bottom: 30px;
  }

  .controls
  {
    text-align: center;
  }
  .menucontrol
  {
    margin-right: 30px;
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
  <img class="header-logo"id="logo-main" src="images/logodpc.png" width="300" alt="Logo Thing main logo">
<nav id="navbar-primary" class="navbar navbar-default" role="navigation" onclick="openNav()">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <p class="navbar-text visible-xs-inline-block">CLIENT PREVIEW</p>
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-primary-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>
    <div class="collapse navbar-collapse" id="navbar-primary-collapse">
      <ul class="nav navbar-nav">
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
                <li class="active"><a href="about-us.aspx">ABOUT US</a></li>
                <li><a href="products.html">PRODUCTS</a></li>
                <li ><a href="awards.aspx">AWARDS</a></li>
                <li><a href="main-client.html">CLIENTELE</a></li>
                <li><a href="job-posting.html">CAREERS</a></li>
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

        <div class="col-md-12">
         <div class="col-md-3 text">
            
           <p> <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Logout.aspx">Log Out</asp:HyperLink> </p>
         </div>


         <div class="col-md-8">

           <div class="col-md-6"><h1><asp:Label ID="lblname" runat="server" Text="Product Name"></asp:Label></h1>
               <div class="col-md-12" style="text-align: center;">
                    <img alt="" src="" id="product3" style="height: 300px; width: 300px; margin:auto"/>
                        <asp:DataList ID="Datalist1" runat="server" Font-Bold="False" 
                      style="text-align: center; display:none" >
                    <ItemTemplate>
                        <div id="dvImages" style="display: none; height:300px; width:300px">
                            <img style="height: 300px; width: 300px" alt="" src='<%# Eval("rmImage1") %>' />
                            <img style="height: 300px; width: 300px" alt="" src='<%#  Eval("rmImage2") %>' />
                            <img style="height: 300px; width: 300px" alt="" src='<%# Eval("rmImage3") %>' />
                            <img style="height: 300px; width: 300px" alt="" src='<%# Eval("rmImage4") %>' />
                            <img style="height: 300px; width: 300px" alt="" src='<%# Eval("rmImage5") %>' />
                            <img style="height: 300px; width: 300px" alt="" src='<%#  Eval("rmImage6") %>' />
						</div>
											</ItemTemplate>
                                            </asp:DataList>
                                           
                    <div class="row controls">
                
                 <asp:HyperLink ID="hyp1" class="menucontrol" runat="server">RETURN</asp:HyperLink>
            
               </div>
                  </div>
              
           </div>

<div class="client">
<h4 style="padding-bottom: 10px">Client</h4>
<p> <asp:Label ID="lblclient" runat="server" Text="Product Name"></asp:Label></p>
</div>
<br>
<h4 style="padding-bottom: 10px">Description</h4>
<p> <asp:Label ID="lblDesc" runat="server" Text="Product Name"></asp:Label></p>
           </div>



</div>
</div>



        <!-- /.row -->

        <!-- Projects Row -->

        <!-- //col-lg-20 -->


        <!-- /.row -->

        <hr>

        <!-- Pagination -->

        <!-- /.row -->

        <hr>

        <!-- Footer -->
       <div class="footer navbar-fixed-bottom" style="background-color: transparent; max-width: 1000px; margin:auto;position: absolute;">
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
     <script type="text/javascript" src="http://cdn.rawgit.com/matdumsa/jQuery.threesixty/master/jquery.threesixty.js"></script>
<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. Slimscroll is required when using the
     fixed layout. -->
         <script type="text/javascript">
        $(function () {
            //Load the image URLs into an Array.
            var arr = new Array();
            $("#dvImages img").each(function () {
                arr.push($(this).attr("src"));
            });

            //Set the first image URL as source for the Product.
            $("#product1, #product2, #product3").attr("src", arr[0]);

            //Click mode.
            $("#product1").threesixty({ images: arr,
                method: 'click',
                sensibility: 1
            });

            //MouseMove mode.
            $("#product2").threesixty({ images: arr,
                method: 'mousemove',
                sensibility: 1
            });

            //Automatic mode.
            $("#product3").threesixty({ images: arr,
                method: 'auto',
                direction: 'forward',
                autoscrollspeed: 500
            });
        });
    </script>
        </form>
</body>

</html>