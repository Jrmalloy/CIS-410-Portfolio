<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MemberAccount.aspx.cs" Inherits="SRC_Project1.MemberAccount" %>

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
            width: 286px;
        }
        .auto-style6 {
            width: 286px;
            height: 20px;
        }
        .auto-style7 {
            height: 20px;
        }
        .auto-style8 {
            width: 286px;
            height: 19px;
        }
        .auto-style9 {
            height: 19px;
        }
        .auto-style11 {
            height: 20px;
            width: 229px;
        }
        .auto-style12 {
            height: 19px;
            width: 229px;
        }
        .auto-style13 {
            width: 229px
        }
        .auto-style14 {
            width: 286px;
            height: 21px;
        }
        .auto-style15 {
            height: 21px;
        }
        .auto-style16 {
            width: 229px;
            height: 21px;
        }
        .auto-style17 {
            width: 485px;
        }
        .auto-style18 {
            height: 20px;
            width: 485px;
        }
        .auto-style19 {
            height: 21px;
            width: 485px;
        }
        .auto-style20 {
            height: 19px;
            width: 485px;
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
        <asp:MenuItem Text="Member Options" Value="Member Options">
            <asp:MenuItem NavigateUrl="~/LockerRegistration.aspx" Text="Locker Registration" Value="LockerReg"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/MemberAccount.aspx" Text ="Member Account" Value="MemberAcct"></asp:MenuItem>
        </asp:MenuItem>
    </Items>
</asp:Menu>
                    </div>
                <br />
                <br />
                
                <table class="nav-justified">
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" Text="Membership Information"></asp:Label>
                        </td>
                        <td class="auto-style17">
                            &nbsp;</td>
                        <td class="auto-style13">
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text="Membership Status"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5">&nbsp;</td>
                        <td class="auto-style17">
                            &nbsp;</td>
                        <td class="auto-style13">&nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5">SRC ID:</td>
                        <td class="auto-style17">
                            <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Width="300px"></asp:TextBox>
                        </td>
                        <td class="auto-style13">Membership Type:</td>
                        <td>
                            <asp:Label ID="MemberType" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">Password:</td>
                        <td class="auto-style18">
                            <asp:TextBox ID="PassText" runat="server" Enabled="False" Width="300px"></asp:TextBox>

                        </td>
                         <td class="auto-style11">Membership Length (Months):</td>
                        <td class="auto-style7">
                            <asp:Label ID="MemLength" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">First Name:</td>
                        <td class="auto-style18">
                            <asp:TextBox ID="FNameText" runat="server" Enabled="False" Width="300px"></asp:TextBox>
                        </td>
                         <td class="auto-style11"></td>
                        <td class="auto-style7">
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">Last Name:</td>
                        <td class="auto-style18">
                            <asp:TextBox ID="LNameText" runat="server" Enabled="False" Width="300px"></asp:TextBox>
                        </td>
                        <td class="auto-style11">
                            <asp:Button ID="Button1" runat="server" Text="Renew" OnClick="Button1_Click" />
                        </td>
                        <td class="auto-style7">  
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">Gender:</td>
                        <td class="auto-style17">
                            <asp:TextBox ID="GenderText" runat="server" Enabled="False" Width="300px"></asp:TextBox>
                        </td>
                        <td class="auto-style13">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5">Graduation Date:</td>
                        <td class="auto-style17">
                            <asp:TextBox ID="GradText" runat="server" Enabled="False" Width="300px"></asp:TextBox>
                        </td>
                        <td class="auto-style13">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">Date of Birth:</td>
                        <td class="auto-style20">
                            <asp:TextBox ID="DOBText" runat="server" Enabled="False" Width="300px"></asp:TextBox>
                        </td>
                        <td class="auto-style12"></td>
                        <td class="auto-style9"></td>
                    </tr>
                    <tr>
                        <td class="auto-style5">Mailing Address:</td>
                        <td class="auto-style17">
                            <asp:TextBox ID="AddressText" runat="server" Enabled="False" Width="300px"></asp:TextBox>
                        </td>
                        <td class="auto-style13">
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="Locker Information"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5">City:</td>
                        <td class="auto-style17">
                            <asp:TextBox ID="CityText" runat="server" Enabled="False" Width="300px"></asp:TextBox>
                        </td>
                        <td class="auto-style13">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style6">State:</td>
                        <td class="auto-style18">
                            <asp:TextBox ID="StateText" runat="server" Enabled="False" Width="300px"></asp:TextBox>
                        </td>
                        <td class="auto-style11">Locker Number:</td>
                        <td class="auto-style7">
                            <asp:Label ID="LockNum" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">Zip Code</td>
                        <td class="auto-style17">
                            <asp:TextBox ID="ZipText" runat="server" Enabled="False" Width="300px"></asp:TextBox>
                        </td>
                        <td class="auto-style13">Locker Type:</td>
                        <td>
                            <asp:Label ID="LockerType" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14">Email:</td>
                        <td class="auto-style19">
                            <asp:TextBox ID="EmailText" runat="server" Enabled="False" Width="300px"></asp:TextBox>
                        </td>
                        <td class="auto-style16">Rental Semseter:</td>
                        <td class="auto-style15">
                            <asp:Label ID="RentalSemester" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">Phone Number:</td>
                        <td class="auto-style20">
                            <asp:TextBox ID="PhoneText" runat="server" Enabled="False" Width="300px"></asp:TextBox>
                        </td>
                        <td class="auto-style12">Expiration Date: </td>
                        <td class="auto-style9">
                            <asp:Label ID="ExpirationLock" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">Emergency Contact:</td>
                        <td class="auto-style17">
                            <asp:TextBox ID="EContact" runat="server" Enabled="False" Width="300px"></asp:TextBox>
                        </td>
                        <td class="auto-style13">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5">Emergency Contact Phone:</td>
                        <td class="auto-style17">
                            <asp:TextBox ID="EPhone" runat="server" Enabled="False" Width="300px"></asp:TextBox>
                        </td>
                        <td class="auto-style13">
                            <asp:Button ID="RenewBtn" runat="server" OnClick="RenewBtn_Click" Text="Purchase" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5">Place of Employment:</td>
                        <td class="auto-style17">
                            <asp:TextBox ID="EmpText" runat="server" Enabled="False" Width="300px"></asp:TextBox>
                        </td>
                        <td class="auto-style13">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5">Employment Phone:</td>
                        <td class="auto-style17">
                            <asp:TextBox ID="EmpPhoneText" runat="server" Enabled="False" Width="300px"></asp:TextBox>
                        </td>
                        <td class="auto-style13">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    
                    <tr>
                        <td class="auto-style5">&nbsp;</td>
                        <td class="auto-style17">
                            &nbsp;</td>
                        <td class="auto-style13">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    
                    <tr>
                        <td class="auto-style5">&nbsp;</td>
                        <td class="auto-style17">
                            <asp:Button ID="Edit" runat="server" OnClick="Edit_Click" Text="Edit" />
                            <asp:Button ID="UpdateBtn" runat="server" OnClick="UpdateBtn_Click" Text="Update" Visible="False" />
                            <asp:Button ID="CancelBtn" runat="server" Text="Cancel" Visible="False" OnClick="CancelBtn_Click" />
                        </td>
                        <td class="auto-style13">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                
                <br />
                <br />
               
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                    
    </form>
            </main>
        </div>
</body>
</html>
