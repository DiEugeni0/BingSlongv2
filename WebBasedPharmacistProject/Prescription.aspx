<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Prescription.aspx.cs" Inherits="WebBasedPharmacistProject.Prescription" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <meta charset="utf-8" content="width=device-width, initial-scale=1">
		
			<!-- Load an icon library to show a hamburger menu (bars) on small screens -->
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
            <link rel="stylesheet" type="text/css" href="w3.css" />
            <link rel="stylesheet" type="text/css" href="nav-side.css" />


    <script type="text/javascript">
        function openWin() {
            myWindow = window.open("AddPrescription.aspx", "_blank", "width=600,height=650");   // Opens a new window
        }
            
            </script>

    <div class="WelcomeBox">
        <center><h1>Prescriptions</h1></center>
        <p><b>Search By Patient ID. (On back of patient card)</b><br />
        <b>Click the add button below to add a prescription</b></p>
        
        <asp:Button ID="btnAddPresc" runat="server" Text="Add Prescription" BorderWidth="0" BackColor="#999999" OnClientClick="openWin()"/>
        &nbsp;&nbsp;&nbsp;

        <asp:Button ID="btnSearch" runat="server" Text="Search" BorderWidth="0" BackColor="#999999"/>
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtPatID" runat="server" Height="20" Width="200" BorderWidth="0"></asp:TextBox>
        <br />
        <br />
        <!--this gridview will be done later when i find ryans DB-->
        <asp:GridView ID="grdStudent" AutoGenerateColumns="True" CssClass="GridView" runat="server" Width="100%" AllowPaging="True" AllowSorting="True">
                            <PagerSettings Mode="NextPreviousFirstLast" FirstPageText="Go To First Page" LastPageText="Go To Last Page" Position="Top"/>
                            <Columns>
                                <asp:TemplateField HeaderText="Student ID" >
                                    <HeaderTemplate>
                                        <asp:CheckBox ID="cbSelectAll" runat="server"  />
                                        &nbsp;
                                        
                                    </HeaderTemplate>
                                    <ItemTemplate> 
                                        <asp:CheckBox ID="chkStudentID" runat="server" AutoPostBack="false" /> 
                                        <asp:Label ID="hidStudentID" runat="server" Text='<%#Eval("Student_ID") %>' Visible="false"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="fname" HeaderText="First Name" SortExpression="fname" />
                                <asp:BoundField DataField="lname" HeaderText="Last Name" SortExpression="lname" />
                                <asp:BoundField HeaderText="City" DataField="City" SortExpression="city" />
                                <asp:BoundField DataField="Phone" HeaderText="Phone"  SortExpression="phone"/>
                                <asp:HyperLinkField DataNavigateUrlFields="Student_ID" DataNavigateUrlFormatString="Display.aspx?ID={0}" HeaderText="View" Text="View" Target="_blank" >
                                    <HeaderStyle HorizontalAlign="Left" />
                                </asp:HyperLinkField>
                                <asp:TemplateField HeaderText="Edit">
                                    <ItemTemplate>
                                        <!-- do later-->
                                    </ItemTemplate>
                                    <HeaderStyle HorizontalAlign="Left" />
                                </asp:TemplateField>
                            </Columns>
                            <EmptyDataTemplate>
                                No Records Found Matching Your Search!
                            </EmptyDataTemplate>
                            </asp:GridView>
        
    </div>
</asp:Content>
