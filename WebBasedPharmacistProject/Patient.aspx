<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Patient.aspx.cs" Inherits="WebBasedPharmacistProject.Patient" %>
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
            myWindow = window.open("AddPatient.aspx", "_blank", "width=600,height=980");   // Opens a new window
        }
            
            </script>

    <div class="WelcomeBox">
        <center><h1>Patients</h1></center>
        <p><b>**INSERT SOME TEXT HERE**</b><br />
        <b>Click the add button below to add a patient</b></p>
        <asp:Button ID="btnAddPat" runat="server" Text="Add Patient" BorderWidth="1" BackColor="#999999" OnClientClick="openWin()"/>
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnSearch1" runat="server" Text="Search" BorderWidth="1" BackColor="#999999"/>
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtSearch" runat="server" Height="20" Width="200" BorderWidth="0"></asp:TextBox>
        <br />
        <br />
        <!--this gridview will be done later when i find ryans DB-->
        <asp:GridView ID="grdStudent" AutoGenerateColumns="True" CssClass="GridView" runat="server" Width="100%" AllowPaging="True" AllowSorting="True">
                            <PagerSettings Mode="NextPreviousFirstLast" FirstPageText="Go To First Page" LastPageText="Go To Last Page" Position="Top"/>
                            <Columns>
                                <asp:TemplateField HeaderText="Patient ID" >
                                    <HeaderTemplate>
                                        <asp:CheckBox ID="cbSelectAll1" runat="server"  />
                                        &nbsp;
                                        
                                    </HeaderTemplate>
                                    <ItemTemplate> 
                                        <asp:CheckBox ID="chkStudentID" runat="server" AutoPostBack="false" /> 
                                        <asp:Label ID="hidStudentID" runat="server" Text='<%#Eval("PatID") %>' Visible="false"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="PatID" HeaderText="Patient ID:" SortExpression="PatID" />
                                <asp:BoundField DataField="fname" HeaderText="First Name:" SortExpression="fname" />
                                <asp:BoundField DataField="middleInitial" HeaderText="Middle Initial:" SortExpression="Middleinitial" />
                                <asp:BoundField DataField="lname" HeaderText="Last Name:" SortExpression="lname" />
                                <asp:BoundField DataField="age" HeaderText="Age:" SortExpression="age" />
                                <asp:BoundField DataField="gender" HeaderText="Gender:" SortExpression="gender" />
                                <asp:BoundField DataField="dob" HeaderText="D.O.B:" SortExpression="dob" />
                                <asp:BoundField DataField="address" HeaderText="Address:" SortExpression="address" />
                                <asp:BoundField HeaderText="City" DataField="City:" SortExpression="city" />
                                <asp:BoundField DataField="state" HeaderText="State:" SortExpression="state" />
                                <asp:BoundField DataField="zip" HeaderText="ZIP:" SortExpression="zip" />
                                <asp:BoundField DataField="workphone" HeaderText="Work Phone:" SortExpression="workphone" />
                                <asp:BoundField DataField="homephone" HeaderText="Home Phone:" SortExpression="homephone" />
                                <asp:BoundField DataField="email" HeaderText="Email:" SortExpression="email" />
                                <asp:BoundField DataField="ssn" HeaderText="SSN:" SortExpression="ssn" />
                                <asp:BoundField DataField="creditcard" HeaderText="Credit Card:" SortExpression="creditcard" />
                                <asp:BoundField DataField="ccv" HeaderText="CCV:" SortExpression="ccv" />

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
