<%@ Page Language="C#" AutoEventWireup="true" CodeFile="product-single.aspx.cs" Inherits="product_single" %>

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
            display: block;
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
          .client
          {
              max-width: 630px;
              margin: auto;
          }
          .footer
          {
              display: none;
          }
          }
          @media (min-width:980px) {
            .client
            {
              padding-top: 30px;
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
          
          }
     #header-content {
    bottom: 0;
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
  }

  .controls
  {
    text-align: center;
  }
  .menucontrol
  {
    margin-right: 30px;
  }
   .text a 
        {
            color: black;
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
      <p class="navbar-text visible-xs-inline-block"><asp:Label ID="lblName" runat="server" Text=""></asp:Label></p>
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

        <div class="col-md-12">
         <div class="col-md-3 text">
            <a href="product-view.aspx?category=uniquemooncake"> <p <asp:Literal ID="Literal1" runat="server"></asp:Literal>>  Unique Mooncake Boxes </p> </a>
          <a href="product-view.aspx?category=standardmooncake"> <p <asp:Literal ID="Literal2" runat="server"></asp:Literal>>  Standard Mooncake Box </p> </a>
            <a href="product-view.aspx?category=pastry"> <p <asp:Literal ID="Literal3" runat="server"></asp:Literal>>  Cake &amp; Pastry </p> </a>
            <a href="product-view.aspx?category=festive"> <p <asp:Literal ID="Literal4" runat="server"></asp:Literal>>  Festives Gift Box </p> </a>
           <a href="product-view.aspx?category=tin"> <p<asp:Literal ID="Literal5" runat="server"></asp:Literal>>  Tin Boxes </p> </a>
             <a href="product-view.aspx?category=retail">  <p <asp:Literal ID="Literal6" runat="server"></asp:Literal>>  Retail &amp; Corporate </p> </a>     
            <a href="product-view.aspx?category=wine"> <p <asp:Literal ID="Literal7" runat="server"></asp:Literal>>  Wine / Chocolate</p> </a>
              <a href="product-view.aspx?category=others"> <p <asp:Literal ID="Literal8" runat="server"></asp:Literal>>  Others</p> </a>
         </div>


            <div class="col-md-8">

                <div class="col-md-7">
                    <form runat="server"><asp:HiddenField ID="HiddenField1" runat="server" /></form>
                    
                    <asp:Literal ID="LiteralTitle" runat="server"></asp:Literal>
                    
                    <asp:Literal ID="LiteralImg" runat="server"></asp:Literal>
                    
                    <br />
                    <div class="row controls">
                        <a href="#" style="padding-right: 25px;" onclick="clickPrevious();" class="prev">< PREV</a>
                        <asp:HyperLink ID="hyp1" class="menucontrol" runat="server">RETURN</asp:HyperLink>
                        <a href="#" onclick="clickNext();" class="next">NEXT ></a>
                        <br />
                        <br />
                    </div>
                </div>

                <div class="client">
                    <h4 style="padding-bottom: 10px">Client</h4>
                    <p><asp:Literal ID="LiteralClient" runat="server"></asp:Literal> </p>
                    

                    <br>
                    <h4 style="padding-bottom: 10px">Description</h4>
                    <asp:Literal ID="LiteralDesc" runat="server"></asp:Literal>
                        
                   
                </div>

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

    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>
    <script>
        $(window).resize(function () {
            if ($(window).height() < 830) {
                $(".navbar-fixed-bottom").css("position", "static");
            }
            else if ($(window).height() > 830) {
                $(".navbar-fixed-bottom").css("position", "static");
            }
        });

        var mac = navigator.platform.match(/(Mac|iPhone|iPod|iPad)/i) ? true : false;

        if (mac) {
            console.log("is mac");
            $(".navbar-fixed-bottom").css("position", "static");
        }
        else {
            $(".navbar-fixed-bottom").css("position", "static");
        }
        var urlList;
        var totalcount;
        var index;

        var len;
        var current;
        var previous;
        var next;
        $(document).ready(function () {


            urlList = JSON.parse($('#HiddenField1').val());

            if (urlList.length!=0) {
                urlList.forEach(appender);
                urlList.push($('.heroimage').attr('src'));
                totalcount = urlList.length;
                index = totalcount;

                 len = urlList.length;

                 var src = $('.heroimage').attr('src');
                 index = urlList.indexOf(src);
                 //current = urlList[src];
                 previous = urlList[(index + len - 1) % len];
                 next = urlList[(index + 1) % len];
            }
            else {
                $('.next').hide();
                $('.prev').hide();
            }

        });

      


        function appender(item, index) {
            urlList[index] = "http://admindpc.azurewebsites.net/" + urlList[index];
            console.log(urlList[index]);
        }


        function clickNext() {
            try {

                var src = $('.heroimage').attr('src');
                console.log(src);
                if (src != null) {

                    index = urlList.indexOf(src);
                    console.log("Next Current index " + index);
                    if (index >= 0 && index < urlList.length - 1) {
                        $('.heroimage').attr('src', urlList[index + 1]);
                    } else if (index == (urlList.length - 1)) {
                        index = 0;
                        $('.heroimage').attr('src', urlList[index]);
                    }
                }
            } catch (e) {

            }

        }

        function clickPrevious() {

            try {
                var src = $('.heroimage').attr('src');
                console.log(src);

                if (src != null) {

                    index = urlList.indexOf(src);
                    console.log("Prev Current index " + index);
                    $('.heroimage').attr('src', urlList[index-1]);
                    if (index == 0) {
                        $('.heroimage').attr('src', urlList[urlList.length-1]);
                    }
                }


                    console.log("Prev After index " + index);
                
            } catch (e) {
                console.log(e);
            }

        }

    </script>
    
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>

