<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about-us.aspx.cs" Inherits="aboutus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
            .para {
                text-align: left;
            }

            .text {
                display: none;
            }

            .mobile {
                display: none;
            }

            .col-md-6 {
                text-align: left;
                margin: auto;
                max-width: 500px;
            }

            .ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom ui-accordion-content-active {
                height: 650px;
            }
            .img 
            {
                width: 100%;
            }
             .row
             {
                 width: 100%;
             }
             .img-responsive
             {
                 width: 100%;
             }
               .abouthover {
            background-color: transparent;
            display: inline-block;
            margin-bottom: 25px;
            width: 100%;
        }
               .footer
               {
                   display:none;
               }
        }

        @media only screen and (min-width : 480px) and (max-width : 991px) {
            .para {
                text-align: left;
            }

            .text {
                display: none;
            }

            .mobile {
                display: none;
            }

            .col-md-6 {
                text-align: left;
                margin: auto;
                max-width: 500px;
            }

            ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom ui-accordion-content-active {
                height: 400px;
            }
            .figure
            {
                text-align: center;
            }
               .abouthover {
            background-color: transparent;
            display: inline-block;
            margin-bottom: 25px;
            width: 100%;
        }
                .img-responsive
             {   margin:auto;
                 width: 500px;
             }
                .footer
                {
                    display:none;
                }
        }

        @media (min-width:992px) {
            .para {
                text-align: left;
            }

            .text {
                display: none;
            }

            .mobile {
                display: block;
            }

            .col-md-6 {
                text-align: left;
                margin: auto;
                max-width: 500px;
            }
            .col-md-5
            {
                margin-right: 30px;
            }
              .abouthover {
            background-color: transparent;
            display: inline-block;
            margin-bottom: 25px;
        }
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

        

        .h1
        {
            margin: 0;
        }

        #header-content {
            bottom: 0;
        }
       
        .text-center
        {
            text-align: right;
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

    <form runat="server">
    <div class="container">
        <!-- Navigation -->
        <header class="banner">
            <img class="header-logo" id="logo-main" src="images/logodpc.png" width="250" alt="Logo Thing main logo">
            <nav id="navbar-primary" class="navbar navbar-default" role="navigation">
                <div class="container-fluid">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <p class="navbar-text visible-xs-inline-block">ABOUT US</p>
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
                            <li class="active"><a href="about-us.aspx">ABOUT US</a></li>
                            <li><a href="products.html">PRODUCTS</a></li>
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
                    <img class="header-logo" id="logo-main" src="images/logodpc.png" width="250" alt="Logo Thing main logo" style="margin-bottom: 20px">
                    <br />
                    <ul class="nav navbar-nav mobileview">
                        <li><a href="index.html">HOME</a></li>
                        <li class="active"><a href="about-us.aspx">ABOUT US</a></li>
                        <li><a href="products.html">PRODUCTS</a></li>
                        <li><a href="awards.aspx">AWARDS</a></li>
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
        <div>
        <div class="row" style="max-width:1000px; height: 500px; overflow-y:scroll; margin: auto">
            <div class="col-md-5">
                <figure style="text-align: left;">
                    <div class="abouthover">
                        <img class="img-responsive" style="height: 160px" src="images/aboutus/img1.png" />
                    </div>
                </figure>

                <figure style="text-align:right" class="mobile">
                    <div class="abouthover">
                        <img class="img-responsive" style="height: 160px" src="images/aboutus/img2.png" />
                    </div>
                </figure>

                <figure class="mobile"  style="text-align: left;">
                    <div class="abouthover">
                        <img class="img-responsive" style="height: 160px" src="images/aboutus/img3.png" />
                    </div>
                </figure>

            </div>

            <div class="col-md-6">
                <div class="post-content">
                   
                    <h1 style="margin: 0">Our Company</h1>
                    <p>It’s all about <strong>YOU</strong>, truly.</p>
                    <p>Our full spectrum of customization, all polished to perfection in order to build your company into a stronghold.</p>
                    <p>From creative processes of design and branding, to the technical expertise of structural innovation and production,&nbsp;DPC strives to outdo ourselves each time being your one-stop Centre for solutions.</p>
                    <p>DPC Packaging Pte Ltd is established both in Singapore and China, we hold our own manufacturing plant in Zhejiang.</p>
                    <h1 style="margin-top: 40px">Mission &amp; Values</h1>
                    <p><strong>Mission</strong>: <br />Be synonymous with both elegance and creativity.</p>
                    <p><strong>Shared Values</strong>:</p>
                    <div class="para">
                        <p>&gt;&gt; Be creative and innovative</p>
                        <p>&gt;&gt; Aim for product excellence</p>
                        <p>&gt;&gt; Transforming Dreams into Reality</p>
                        <p>&gt;&gt; Entrepreneurship</p>
                        <p>&gt;&gt; Strive to be the best in everything we do</p>
                        <p>In a nutshell; quality and deliverance!</p>
                    </div>
                </div>
                 
                <h1 style="margin-top: 40px">  Join our team </h1>
                <p>
                    DP Concept’s employment policy considers diversity as a great asset and is committed to eradicating any discrimination linked to age,
                    gender, history, opinion or any other personal characteristics during its recruitment process.
                </p>
                <p>If you think you have what it takes to join our team of talents, feel free to contact us at hr@dpconcept.com.sg</p>
                <p>Applications are to include your resume and portfolio.</p>
                <p>Please indicate which position you’re applying for</p>
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                <div id="accordion" runat="server">
                     <asp:Literal ID="Literal2" runat="server"></asp:Literal>
                    
                </div>
            </div>
            
        </div>
        
            <!-- /.row -->
            <!-- Projects Row -->
            <!-- //col-lg-20 -->
        </div>
       
       
        </div>
        <hr>


        <hr>
        <hr />
    <div class="footer navbar-fixed-bottom" style="background-color: transparent; max-width: 1000px; margin:auto; position: absolute;">
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
           

            <!-- Footer -->
            <!-- /.container -->
            <!-- jQuery -->
            <script src="js/jquery.js"></script>
            <script src="http://code.jquery.com/ui/1.10.0/jquery-ui.js"></script>
            <script src="js/jquery.ba-resize.min.js"></script>
            <script>
                $("#accordion").accordion({
                    collapsible: true, active: 'none'
                });
                $("#navbar-primary")
                    .resize(function () {
                        $(".row").css("width", ($(this).width() - 150));
                    });
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

            </script>
            <!-- Bootstrap Core JavaScript -->
            <script src="js/bootstrap.min.js"></script>
        </form>
</body>
</html>
