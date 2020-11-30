<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MaintenanceForm.aspx.cs" Inherits="SRC_Project1.MaintenanceForm" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
    <link href="Content/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style4 {
            width: 198px;
            height: 92px;
        }
        .auto-style5 {
            margin-top: 61px;
        }
        </style>
    
</head>


<body>
  
    <div class="container">
         <header>
    <div class="container-fluid">
        <img src="Content/university-of-louisville.png" class="auto-style4" />&nbsp;
  </div>
        </header>
  
        <main>
            <form id="form1" runat="server" class="form-horizontal">
                <div class="container-fluid" style="background-color:darkred">
 <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" CssClass="menu"  >
    <Items>
        <asp:MenuItem NavigateUrl="~/LogIn.aspx" Text="Log In" />
        <asp:MenuItem NavigateUrl="~/Home.aspx" Text="Home" />
        <asp:MenuItem NavigateUrl=" https://louisville.edu/intramurals/about-us/contact-us" Text="Contact us"  />
        <asp:MenuItem NavigateUrl ="https://louisville.edu/intramurals/about-us" Text="About us"  />
        <asp:MenuItem Text="Admin Tools" Value="Admin Tools">
            <asp:MenuItem NavigateUrl="~/EmployeeList.aspx" Text="Employee List" Value="Employee List"></asp:MenuItem>
             <asp:MenuItem NavigateUrl="~/Reporting.aspx" Text="Reporting Lists" Value="Reporting Lists"></asp:MenuItem>
        </asp:MenuItem>
        <asp:MenuItem Text="Employee Tools" Value="Employee Tools">
            <asp:MenuItem NavigateUrl="~/Member List.aspx" Text="Member List" Value="Member List"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/Locker List.aspx" Text="Locker List" Value="Locker List"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/Maintenance.aspx" Text="Maintenance Form" Value="Maintenence"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/Utilization.aspx" Text="Utilization" Value="Utilization"></asp:MenuItem>
        </asp:MenuItem>
    </Items>
</asp:Menu>
                    </div>
        <div style="font-size: 36px; font-weight: bold;">
            Maintenance Form<asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style5" Width="44px" Visible="False"></asp:TextBox>
        </div>
    <table class="auto-style1">
        
        <tr>
            <td class="auto-style2">Select Machine Number</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="MACHINE_NUM" DataValueField="MACHINE_NUM" AutoPostBack="True" Width="301px" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Connect4Database %>" SelectCommand="SELECT [MACHINE_NUM] FROM [MACHINE]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Serial Number</td>
            <td>
                <asp:TextBox ID="SerialText" runat="server" ReadOnly="True" BackColor="#CCCCCC" Width="294px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Machine Name</td>
            <td>
                <asp:TextBox ID="NameText" runat="server" ReadOnly="True" BackColor="#CCCCCC" Width="294px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Date of Purchase</td>
            <td>
                <asp:TextBox ID="DatePurchasedText" runat="server" ReadOnly="True" BackColor="#CCCCCC" Width="294px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Date Inspected</td>
            <td>
                <asp:TextBox ID="DateInspectedText" runat="server" Width="291px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Date Last Serviced</td>
            <td>
                <asp:TextBox ID="LastServicedText" runat="server" ReadOnly="True" BackColor="#CCCCCC" Width="293px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Machine Type</td>
            <td>
                <asp:TextBox ID="MachineTypeText" runat="server" ReadOnly="True" BackColor="#CCCCCC" Width="294px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Comments</td>
            <td class="auto-style4">
                <asp:TextBox ID="CommentsText" runat="server" Height="137px" Width="294px"></asp:TextBox>
            </td>
        </tr>
    </table>
        <asp:Button ID="insertBtn" runat="server" Text="Insert" OnClick="insertBtn_Click" />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Return to Maintenance List" />
        <asp:Label ID="Label1" runat="server" ValidateRequestMode="Disabled"></asp:Label>
    </form>
            </main>
        </div>
    </body>
</html>
