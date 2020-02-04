<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddPatient.aspx.cs" Inherits="WebBasedPharmacistProject.AddPatient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Patient</title>
</head>
<body style="background-image: url(trees.jpg); background-size: cover; ">
    <form id="form1" runat="server">
        <!-- MAIN DIV HERE-->
        <div class="WelcomeBox">
            <!--TABLE STARTS-->
            <table align:"center" style="border: 3px solid black; background: /*rgba(51,51,51, 0.7);*/rgba(186, 186, 186, 0.8); font: bold 30px; font-family: Arial; font-weight:700; ">
                <tr>
                    <td style="padding: 30px;">Lets Register a New Patient!<br />
                        <br />
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" BackColor="White" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnClear" runat="server" Text="Clear" BackColor="White" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnClose" runat="server" Text="Close" BackColor="White" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" />
                    </td>
                    <td><img src="apothecary-jars.jpg" class="jarresponse" style="border: 2px solid black; height: 165px; width: 262px;" border="2" /></td>
                </tr>

                <tr>
                    <td style="padding: 10px;">Patient ID: </td>
                    <td style="padding: 10px;"><asp:TextBox ID="txtPatID" runat="server" Height="20" Width="200" BorderWidth="1"></asp:TextBox>&nbsp;&nbsp;&nbsp; </td>
                </tr>

                <tr>
                    <td style="padding: 10px;">First Name: </td>
                    <td style="padding: 10px;"><asp:TextBox ID="txtFirstN" runat="server" Height="20" Width="200" BorderWidth="1"></asp:TextBox></td>
                </tr>

                <tr>
                    <td style="padding: 10px;">Middle Initial: </td>
                    <td style="padding: 10px;"><asp:TextBox ID="txtMiddleI" runat="server" Height="20" Width="200" BorderWidth="1"></asp:TextBox>&nbsp;</td>
                </tr>

                <tr>
                    <td  style="padding: 10px;">Last Name: </td>
                    <td style="padding: 10px;"><asp:TextBox ID="txtLastN" runat="server" Height="20" Width="200" BorderWidth="1"></asp:TextBox></td>
                </tr>

                <tr>
                    <td style="padding: 10px;">Age: </td>
                    <td style="padding: 10px;"><asp:TextBox ID="txtAge" runat="server" Height="20" Width="200" BorderWidth="1"></asp:TextBox></td>
                </tr>

                <tr>
                    <td style="padding: 10px;">Gender: </td>
                    <td style="padding: 10px;"><asp:TextBox ID="txtGender" runat="server" Height="20" Width="200" BorderWidth="1"></asp:TextBox></td>
                </tr>

                <tr>
                    <td style="padding: 10px;">Date of Birth: </td>
                    <td style="padding: 10px;"><asp:TextBox ID="txtDOB" runat="server" Height="20" Width="200" BorderWidth="1"></asp:TextBox></td>
                </tr>

                <tr>
                    <td style="padding: 10px;">Street Address: </td>
                    <td style="padding: 10px;"><asp:TextBox ID="txtAddress" runat="server" Height="20" Width="200" BorderWidth="1"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="padding: 10px;">City: </td>
                    <td style="padding: 10px;"><asp:TextBox ID="txtCity" runat="server" Height="20" Width="200" BorderWidth="1"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="padding: 10px;">State: </td>
                    <td style="padding: 10px;"><asp:TextBox ID="txtState" runat="server" Height="20" Width="200" BorderWidth="1"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="padding: 10px;">Zip/Postal: </td>
                    <td style="padding: 10px;"><asp:TextBox ID="txtZip" runat="server" Height="20" Width="200" BorderWidth="1"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="padding: 10px;">Work Phone: </td>
                    <td style="padding: 10px;"><asp:TextBox ID="txtWorkPhone" runat="server" Height="20" Width="200" BorderWidth="1"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="padding: 10px;">Home Phone: </td>
                    <td style="padding: 10px;"><asp:TextBox ID="txtHomePhone" runat="server" Height="20" Width="200" BorderWidth="1"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="padding: 10px;">Email: </td>
                    <td style="padding: 10px;"><asp:TextBox ID="txtEmail" runat="server" Height="20" Width="200" BorderWidth="1"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="padding: 10px;">SSN: </td>
                    <td style="padding: 10px;"><asp:TextBox ID="txtSSN" runat="server" Height="20" Width="200" BorderWidth="1"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="padding: 10px;">Credit Card: </td>
                    <td style="padding: 10px;"><asp:TextBox ID="txtCreditCard" runat="server" Height="20" Width="200" BorderWidth="1"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="padding: 10px;">CCV: </td>
                    <td style="padding: 10px;"><asp:TextBox ID="txtCCV" runat="server" Height="20" Width="200" BorderWidth="1"></asp:TextBox></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>