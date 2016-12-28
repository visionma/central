<!DOCTYPE html>
<cfif NOT ( structKeyExists(session,'login') and trim(session.login) )>

    <cfinclude template="login.cfm">
    <cfabort>

</cfif>

<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="Content-type" content="text/html; charset=utf-8">
    	<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<title> Vision USA, Inc </title>
		<meta name="description" content="">
		<meta name="author" content="Dae W Shin">
			
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

		<!-- Basic Styles -->
		<link rel="stylesheet" type="text/css" media="screen" href="css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" media="screen" href="css/font-awesome.min.css">
		<link rel="stylesheet" type="text/css" media="screen" href="css/vision-production.css">
		<link rel="stylesheet" type="text/css" media="screen" href="css/vision-skins.css">
		

		<!--link rel="stylesheet" type="text/css" media="screen" href="css/fkbc.css"-->
		  <!-- FAVICONS -->
		<link rel="shortcut icon" href="img/favicon/favicon.ico" type="image/x-icon">
		<link rel="icon" href="img/favicon/favicon.ico" type="image/x-icon">

		<!-- GOOGLE FONT -->
		<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,300,400,700">
		
		<!-- iOS web-app metas : hides Safari UI Components and Changes Status Bar Appearance -->
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<link rel="apple-touch-icon" href="img/splash/sptouch-icon-iphone.png">
		<link rel="apple-touch-icon" sizes="76x76" href="img/splash/touch-icon-ipad.png">
		<link rel="apple-touch-icon" sizes="120x120" href="img/splash/touch-icon-iphone-retina.png">
		<link rel="apple-touch-icon" sizes="152x152" href="img/splash/touch-icon-ipad-retina.png">
		
		<!-- iOS web-app metas : hides Safari UI Components and Changes Status Bar Appearance -->
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		
		<!-- Startup image for web apps -->
		<link rel="apple-touch-startup-image" href="img/splash/ipad-landscape.png" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:landscape)">
		<link rel="apple-touch-startup-image" href="img/splash/ipad-portrait.png" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:portrait)">
		<link rel="apple-touch-startup-image" href="img/splash/iphone.png" media="screen and (max-device-width: 320px)">
		
	</head>
	<body>
	
		<header id="header">
			<div id="logo-group">
				<span>
			      <h6 class="txt-color-white">
			      <a href="index.cfm">
			      <img src="./image/logo.png" width="30" alt="Vision Logo" style="margin-top:0px; margin-left:10px;"></a> VISION CENTRAL</h6>
			    </span>
			</div>

			<!-- pulled right: nav area -->
			<div class="pull-right">

			    <!-- collapse menu button -->
			    <div id="hide-menu" class="btn-header pull-right">
			      <span> 
			      	<a href="javascript:void(0);" data-action="toggleMenu" title="Collapse Menu"><i class="fa fa-reorder"></i></a> 
			      </span>
			    </div>
			    <!-- end collapse menu -->

			    <!-- logout button -->
			    <div id="logout" class="btn-header transparent pull-right">
			      <span> <a href="logout.cfm" title="Sign Out"><i class="fa fa-sign-out"></i></a> </span>
			    </div>
			    <!-- end logout button -->
			 </div>
			<!-- end pulled right: nav area -->
		</header>
		<!-- END HEADER -->


		<cfinclude template="sidebar.cfm">


