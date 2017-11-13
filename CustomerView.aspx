<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomerView.aspx.cs" Inherits="CustomerView" %>

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
    @media (max-width:500px) {
              .text{
           display:none;
          }
          .container
          {
            padding: 0;
          }
          img
          {
            padding-bottom: 20px;
          }
          .footer
          {
              display: none;
          }
           }
        @media only screen and (min-width : 501px) and (max-width : 991px) {
            .footer
            {
                display: none;
            }
        }
@media (min-width:992px) {
            
          img
          {
            padding-bottom: 20px;
          }
        .overlay
        {
            display: none;
        }
        .banner
{
    display: block;
    margin: 20px auto;
    text-align: center;
  }
           }
  .text
  {
    border-right: 4px solid;
    text-align: right;
    padding-top: 300px;
    margin-right: 30px;
  }
  .product
  {
    margin-bottom: 30px;
    text-align: center;
  }

#navbar-primary.navbar-default {
  background: transparent;
  border: none;
  .navbar-nav {
    width: 100%;
    text-align: center;
    > li {
      display: inline-block;
      float: none;
      > a {
        padding-left: 30px;
        padding-right: 30px;
        }
    }
  }
}
#navbar-primary.navbar-default {
  background: transparent;
  border: none;
}
#navbar-primary.navbar-default .navbar-nav {
  width: 100%;
  text-align: center;
}
#navbar-primary.navbar-default .navbar-nav > li {
  display: inline-block;
  float: none;
}
#navbar-primary.navbar-default .navbar-nav > li > a {
  padding-left: 30px;
  padding-right: 30px;
}

  .producting
  {
    margin-bottom: 20px;
  }
  .col-md-6
  {
      text-align: center;
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
  <nav id="navbar-primary" class="navbar navbar-default" role="navigation" onclick="openNav()">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <p class="navbar-text visible-xs-inline-block">CLIENT PREVIEW</p>
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-primary-collapse" >
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
        <li ><a href="products.html">PRODUCTS</a></li>
        <li><a href="awards.aspx">AWARDS</a></li>
        <li><a href="main-client.html">CLIENTELE</a></li>
        <li><a href="media.html">MEDIA</a></li>
        <li><a href="contact-us.html">CONTACT</a></li>
        <li  class="active"><a href="Login.aspx">CLIENT LOGIN</a></li>
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
                  <li ><a href="about-us.aspx">ABOUT US</a></li>
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


         <div class="col-md-3 text">
           <p> <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Logout.aspx">Log Out</asp:HyperLink> </p>
         </div>

         <div class="col-md-8">  
 <div class="row producting">             
<asp:Repeater ID="rptCustomers" runat="server">
    <HeaderTemplate>
       
    </HeaderTemplate>
    <ItemTemplate>
 
                <div class="col-md-6">
                     <asp:HyperLink runat="server"  NavigateUrl='<%# "../" + "CustomerProduct.aspx?imageID=" + Eval("rmID")%>'>
               
                      <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("rmImage1")%>' class="img-responsive" />
                 </asp:HyperLink>
                     </div>
    </ItemTemplate>
    <FooterTemplate>
        </table>
    </FooterTemplate>
</asp:Repeater>
     </div>
</div>




        <!-- /.row -->

        <!-- Projects Row -->

        <!-- //col-lg-20 -->
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
