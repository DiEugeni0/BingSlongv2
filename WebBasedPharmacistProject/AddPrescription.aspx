<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddPrescription.aspx.cs" Inherits="WebBasedPharmacistProject.AddPrescription" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Prescription</title>
</head>
<body style="background-image: url(trees.jpg); background-size: cover;">
    <form id="form1" runat="server">
        <!-- MAIN DIV HERE-->
        <div class="WelcomeBox">
            <!--TABLE STARTS-->
            <table align:"center" style="border: 3px solid black; background: /*rgba(51,51,51, 0.7);*/rgba(186, 186, 186, 0.8); font: bold 30px; font-family: Arial; font-weight:700; ">
                <tr>
                    <td style="padding: 30px;">Let's Setup a New Prescription!<br />
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
                    <td style="padding: 10px;">Physician ID: </td>
                    <td style="padding: 10px;"><asp:TextBox ID="txtPhyID" runat="server" Height="20" Width="200" BorderWidth="1"></asp:TextBox></td>
                </tr>

                <tr>
                    <td style="padding: 10px;">Prescription ID: </td>
                    <td style="padding: 10px;"><asp:TextBox ID="txtPreID" runat="server" Height="20" Width="200" BorderWidth="1"></asp:TextBox>&nbsp;</td>
                </tr>

                <tr>
                    <td  style="padding: 10px;">Presrciption Common Name: </td>
                    <td style="padding: 10px;"><asp:TextBox ID="txtCommonName" runat="server" Height="20" Width="200" BorderWidth="1"></asp:TextBox></td>
                </tr>

                <tr>
                    <td style="padding: 10px;">Dosage: </td>
                    <td style="padding: 10px;"><asp:TextBox ID="txtDosage" runat="server" Height="20" Width="200" BorderWidth="1"></asp:TextBox></td>
                </tr>

                <tr>
                    <td style="padding: 10px;">Description: </td>
                    <td style="padding: 10px;"><asp:TextBox ID="txtDesc" runat="server" Height="20" Width="200" BorderWidth="1"></asp:TextBox></td>
                </tr>

                <tr>
                    <td style="padding: 10px;">Date Prescribed: </td>
                    <td style="padding: 10px;"><asp:TextBox ID="txtDatePre" runat="server" Height="20" Width="200" BorderWidth="1"></asp:TextBox></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
