<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="WebBasedPharmacistProject.Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Test</title>
        <meta charset="utf-8" content="width=device-width, initial-scale=1">
		
			<!-- Load an icon library to show a hamburger menu (bars) on small screens -->
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
            <link rel="stylesheet" type="text/css" href="w3.css" />
            <link rel="stylesheet" type="text/css" href="nav-side.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="mySidenav" class="sidenav">
			<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
			<a href="https://www.youtube.com/">Youtube</a>
			<a href="https://www.reddit.com/">Reddit</a>
			<a href="https://outlook.office365.com/mail/inbox">Work/School Email</a>
			<a href="https://www2.quecentre.com/stevenscollege/Login.aspx?ReturnUrl=%2fstevenscollege">Ticketing</a>
			<a href="https://www.amazon.com/">Amazon</a>
			<a href="https://www.disneyplus.com/">Disney+</a>
		</div>
		
		<!-- Add all page content inside this div if you want the side nav to push page content to the right (not used if you only want the sidenav to sit on top of the page -->
		<div id="main">
			<!--Throw everything in this div now to get pushed to the side-->
		
				<div class="topnav" id="myTopnav">
					<span onclick="openNav()"><a class="active" href="#"><i class="fa fa-fw fa-home"></i>Welcome</a></span>
					<a href="https://www.linuxtoday.com/">Linux News</a>
					<a href="#contact" onclick="confirm('Please email no one as you made this yourself dumbass')"><i class="fa fa-fw fa-envelope"></i>Contact</a>
					<a href="#about" onclick="confirm('Information about me will not be given to me by me for me to use')"><i class="fa fa-fw fa-user"></i>About Me</a>
					<a href="https://www.bing.com/">Bing</a>
					<a style="float: right;"><i align="right">This is StartPage v1.0</i></a>
					<a href="javascript:void(0);" class="icon" onclick="myFunction()"><i class="fa fa-bars"></i></a>
				</div>
				
		</div> 
    </form>
</body>
</html>
