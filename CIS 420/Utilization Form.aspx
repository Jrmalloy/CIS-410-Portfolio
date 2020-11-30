<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Utilization Form.aspx.cs" Inherits="SRC_Project1.Utilization_Form" %>

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
        <div style="font-size: 35px; font-weight: bold">
            Utilization Form<asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style7" Visible="False"></asp:TextBox>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Date</td>
                <td>
                    <asp:TextBox ID="Date" runat="server" ReadOnly="true"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Time</td>
                <td>
                    <asp:TextBox ID="Time" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Gym Area</td>
                <td>
                    <asp:TextBox ID="Area" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Male</td>
                <td class="auto-style6">
                    <asp:TextBox ID="Male" runat="server"></asp:TextBox>
                    <asp:Button ID="MaleIn" runat="server" OnClick="MaleIn_Click" Text="Increase" />
                    <asp:Button ID="MaleDe" runat="server" OnClick="MaleDe_Click" Text="Decrease" Width="94px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Female</td>
                <td class="auto-style4">
                    <asp:TextBox ID="Female" runat="server"></asp:TextBox>
                    <asp:Button ID="FemaleIn" runat="server" OnClick="FemaleIn_Click" Text="Increase" />
                    <asp:Button ID="FemaleDe" runat="server" OnClick="FemaleDe_Click" Text="Decrease" Width="94px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Caucasian</td>
                <td>
                    <asp:TextBox ID="White" runat="server"></asp:TextBox>
                    <asp:Button ID="WhiteIn" runat="server" OnClick="WhiteIn_Click" Text="Increase" />
                    <asp:Button ID="WhiteDe" runat="server" OnClick="WhiteDe_Click" Text="Decrease" Width="93px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">African American</td>
                <td>
                    <asp:TextBox ID="Black" runat="server"></asp:TextBox>
                    <asp:Button ID="BlackIn" runat="server" OnClick="BlackIn_Click" Text="Increase" />
                    <asp:Button ID="BlackDe" runat="server" OnClick="BlackDe_Click" Text="Decrease" Width="94px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Other</td>
                <td class="auto-style6">
                    <asp:TextBox ID="Other" runat="server"></asp:TextBox>
                    <asp:Button ID="OtherIn" runat="server" OnClick="OtherIn_Click" Text="Increase" />
                    <asp:Button ID="OtherDe" runat="server" OnClick="OtherDe_Click" Text="Decrease" Width="95px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Employee ID</td>
                <td>
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                    <br />
                </td>
            </tr>
        </table>
        <asp:Button ID="Insert" runat="server" OnClick="Insert_Click" Text="Submit" />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Clear" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Return to Utilization List" />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </form>
            </main>
        </div>
</body>
</html>
