<%@ Page Language="C#" AutoEventWireup="true" CodeFile="awards.aspx.cs" Inherits="awards"  %>

<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Design Packaging Concept</title>
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
    @media (max-width:479px) {
              .text{
           display:none;
          }
          .overlay a {font-size: 20px}
          .closebtn {
              font-size: 40px !important;
              top: 15px;
              right: 35px;
          }
          .footer
          {
              display:none;
          }
          .imgcat
          {
              height: 250px;
          }
           }
     @media only screen 
and (min-width : 480px) 
and (max-width : 991px)
     {
         .text
         {
             display: none;
         }
         .imger
         {
             width: 60%;
             margin: auto;
         }
         .footer
         {
             display: none;
         }
     }

     @media only screen 
and (min-width : 992px) 
and (max-width : 1199px)
     {
        
         .imger
         {
             width: 60%;
             margin: auto;
         }
         .col-md-4
         {
             padding-left: 40px;
         }
         .footer {
  display: none;

}
     }
        @media (min-width:1200px) {
             .footer {
  bottom: 0;
  width: 1000px;
  /* Set the fixed height of the footer here */
  height: 30px;
  background-color: white;
  margin: auto;
  color: grey;

}

        }

     #header-content {
    bottom: 0;
  }
    .text-center
    {
        text-align: right;
    }
  .text
  {
    border-right: 4px solid;
    text-align: right;
    padding-top: 400px;
    color: black;
  }
  .text a 
  {
      color: black;
  }
  .product
  {
    margin-bottom: 30px;
  }
  .desc
  {

  }
  .controls
  {
    text-align: center;
  }
  .menucontrol
  {
    margin-right: 30px;
  }
  .imger {
    margin-bottom: 20px;
}
.images
{
  text-align: center;
}

.banner
{
    display: block;
    margin: 20px auto;
    text-align: center;
  }

.award
{
    opacity: 0.3;
}

.selected
{
    opacity: 1;
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
  <header class="banner">
<img class="header-logo"id="logo-main" src="images/logodpc.png" width="250" alt="Logo Thing main logo">
<nav id="navbar-primary" class="navbar navbar-default" role="navigation">
<div class="container-fluid">
  <!-- Brand and toggle get grouped for better mobile display -->
  <div class="navbar-header">
    <p class="navbar-text visible-xs-inline-block">AWARDS</p>
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
        <li class="active"><a href="awards.aspx">AWARDS</a></li>
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
                <li><a href="products.html">PRODUCTS</a></li>
                <li class="active" ><a href="awards.aspx">AWARDS</a></li>
                <li><a href="main-client.html">CLIENTELE</a></li>
                <li><a href="media.html">MEDIA</a></li>
                <li><a href="contact-us.html">CONTACT</a></li>
                <li><a href="Login.aspx">CLIENT LOGIN</a></li>
            </ul>
         </div>


</div>
</header><!-- header role="banner" -->
<div class="container">
    <!-- Navigation -->


    <!-- Page Content -->


        <!-- Page Heading -->
        <!-- /.row -->

        <!-- Projects Row -->

        <div class="col-md-12">
         <div class="col-md-3 text">
             <a href="awards.aspx?cat=2016&imageID=3&awardSelected=3"> <p <asp:Literal ID="Literal3" runat="server"></asp:Literal>>  2016 </p> </a>
             <a href="awards.aspx?cat=2015&imageID=8&awardSelected=8"> <p <asp:Literal ID="Literal4" runat="server"></asp:Literal>>  2015 </p> </a>
             <a href="awards.aspx?cat=PreviousAwards&imageID=10&awardSelected=10"> <p <asp:Literal ID="Literal5" runat="server"></asp:Literal>>  Previous Awards </p> </a>
         </div>


         <div class="col-md-9">

           <div class="col-md-3 images" style="height: 495px; overflow-y:scroll; margin: auto">
               <asp:Repeater ID="rptCustomers" runat="server">
    <HeaderTemplate>
       
    </HeaderTemplate>
    <ItemTemplate>
                     <asp:HyperLink runat="server"  NavigateUrl='<%# "awards.aspx?cat=" + Eval("awCat") + "&imageID=" + Eval("awID") + "&awardSelected=" + Eval("awID") %>' OnClientClick="return false;">
               
                      <!--<asp:Image ID="ImageControl" runat="server" class="img-responsive award"   style="max-width: 200px; height:165px; text-align: center; margin:auto" ImageUrl='<%# "http://admindpc.azurewebsites.net/" + Eval("awPic")%>' /> -->
                        <img class=" img-responsive award " ID='<%# Eval("awID")%>' style="max-width: 200px; height:165px; text-align: center; margin:auto" src='<%# "http://admindpc.azurewebsites.net/" + Eval("awPic")%>'>
                 </asp:HyperLink>
    </ItemTemplate>
    <FooterTemplate>
        </table>
    </FooterTemplate>
                   
</asp:Repeater>
           </div>

             <div class="col-md-9 desc">


                 <div class="col-md-5">
                     
                     <p style="margin-left:60px"><asp:Label ID="lblDesc" runat="server" Text="Product Name"></asp:Label></p>
                 </div>
                 <img src="<asp:Literal ID="Literal2" runat="server"></asp:Literal>" class="img-responsive imgcat" style="max-width: 550px; max-height: 450px; margin:auto"><br>
             </div>

</div>
</div>



        <!-- /.row -->

        <!-- Projects Row -->


        <!-- /.row -->


        <!-- Footer -->

    </div>
    
    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>
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
        
       
        

        function getParameterByName(name, url) {
            if (!url) url = window.location.href;
            name = name.replace(/[\[\]]/g, "\\$&");
            var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
                results = regex.exec(url);
            if (!results) return null;
            if (!results[2]) return '';
            return decodeURIComponent(results[2].replace(/\+/g, " "));
        }
        var foo = getParameterByName('awardSelected');

        $('#' + foo).addClass('selected');

        console.log(foo);
</script>
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
</form>
    <hr>
    <hr>
    <div class="footer navbar-fixed-bottom" style="background-color: transparent; max-width: 1000px; margin:auto;position:static">
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
</body>

</html>

