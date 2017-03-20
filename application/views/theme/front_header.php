<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title><?php echo $pageTitle; ?> - <?php echo $appName; ?></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Place favicon.ico in the root directory -->
    <link rel="apple-touch-icon" href="<?php echo base_url(); ?>themes/frontend/images/apple-touch-icon.png">
    <link rel="shortcut icon" type="image/ico" href="<?php echo base_url(); ?>themes/frontend/images/favicon.ico" />
    <!-- Plugin-CSS -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>themes/frontend/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>themes/frontend/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>themes/frontend/css/font-awesome.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>themes/frontend/css/animate.css">
    <!-- Main-Stylesheets -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>themes/frontend/css/normalize.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>themes/frontend/css/theme.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>themes/frontend/style.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>themes/frontend/css/responsive.css">
    <script src="<?php echo base_url(); ?>themes/frontend/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
  
  <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    <!--Header-Area-Start -->
    <header data-spy="scroll" data-target=".mainmenu">
        <!-- Mainmenu-Area  data-spy="affix" data-offset-top="197" -->
        <div class="mainmenu navbar-fixed-top" data-spy="affix" data-offset-top="150">
            <div class="navbar navbar-default">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#mainmenu"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                        <a href="#home" class="nevbar-brand"><img src="<?php echo base_url(); ?>themes/frontend/images/logo.png" alt="Wefay"></a>
                    </div>
                    <div class="collapse navbar-collapse" id="mainmenu">
                        <ul class="nav navbar-nav navbar-right text-capitalize">
                            <li class="active"><a href="#home">Home</a></li>
                            <!-- <li><a href="#feature">Feature</a></li> -->
                            <!-- <li><a href="#video">video</a></li> -->
                            <li><a href="#apps">apps</a></li>
                            <li><a href="#testimonial">testimonial</a></li>
                            <!-- <li><a href="#price">price</a></li> -->
                            <li><a href="#download">download</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- Mainmenu-Area -->