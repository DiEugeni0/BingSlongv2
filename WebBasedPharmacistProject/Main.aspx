<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="WebBasedPharmacistProject.Main" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
          
            <meta charset="utf-8" content="width=device-width, initial-scale=1">
		
			<!-- Load an icon library to show a hamburger menu (bars) on small screens -->
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
            <link rel="stylesheet" type="text/css" href="w3.css" />
            <link rel="stylesheet" type="text/css" href="nav-side.css" />


    <div class="WelcomeBox">
        <center><h1>Welcome to Cletus & Shorty's Apothecary!</h1></center>
        <hr style="border: 1px solid black;"/>
        <!--Maybe insert table here to put the image and get started text in the left and maybe some employee information in the right side.-->
        <center><p><b>Please click the button above to get started.</b><p /></center>
        <center><p><b>Remember to make your patient feel special!**</b></p></center>
        <center><img src="apothecary-jars.jpg" class="jarresponse" style="border: 2px solid black;" /></center>
    </div>
</asp:Content>
