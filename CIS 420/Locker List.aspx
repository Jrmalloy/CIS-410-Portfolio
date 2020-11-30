<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Locker List.aspx.cs" Inherits="SRC_Project1.Locker_List" %>

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
        .auto-style6 {
            width: auto;
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
         <div style="max-height:700px; margin-left:auto; overflow: scroll; margin-right:auto;" class="auto-style6">
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="LOCKER_NUM" DataSourceID="SqlDataSource1" ShowFooter="True" CssClass="auto-style5">
                <Columns>
                    <asp:TemplateField HeaderText="LOCKER_NUM" SortExpression="LOCKER_NUM">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("LOCKER_NUM") %>'></asp:Label>                
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("LOCKER_NUM") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID ="LockerNum" runat="server"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="Insert" runat="server" 
                                ErrorMessage="Locker Number is a Required Field"
                                ControlToValidate="LockerNum"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="LOCKER_TYPE" SortExpression="LOCKER_TYPE">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("LOCKER_TYPE") %>'></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ErrorMessage="Locker Type is a Required Field"
                                ControlToValidate="TextBox1"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("LOCKER_TYPE") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="LockerType" runat="server"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="Insert" runat="server" 
                                ErrorMessage="Locker Type is a Required Field"
                                ControlToValidate="LockerType"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="GENDER" SortExpression="GENDER">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("GENDER") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ErrorMessage="Gender is a Required Field"
                                ControlToValidate="TextBox2"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("GENDER") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="Gender" runat="server"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="Insert" runat="server" 
                                ErrorMessage="Gender is a Required Field"
                                ControlToValidate="Gender"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="RENTAL_SEMESTER" SortExpression="RENTAL_SEMESTER">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("RENTAL_SEMESTER") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ErrorMessage="Rental Semester is a Required Field"
                                ControlToValidate="TextBox3"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("RENTAL_SEMESTER") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="RentalSemester" runat="server"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ValidationGroup="Insert" runat="server" 
                                ErrorMessage="Rental Semester is a Required Field"
                                ControlToValidate="RentalSemester"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="EXPIRATION_DATE" SortExpression="EXPIRATION_DATE">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("EXPIRATION_DATE") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                ErrorMessage="Expiration Date is a Required Field"
                                ControlToValidate="TextBox4"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("EXPIRATION_DATE") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="ExpirationDate" runat="server"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ValidationGroup="Insert" runat="server" 
                                ErrorMessage="Expiration Date is a Required Field"
                                ControlToValidate="ExpirationDate"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="SRC_ID" SortExpression="SRC_ID">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("SRC_ID") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("SRC_ID") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="SRCID" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:LinkButton OnClick="LnkInsert_Click" ValidationGroup="Insert" ID="LnkInsert" Text="Insert" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
             <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" runat="server" />
             <asp:Label ID="Label6" runat="server"></asp:Label>
             <asp:ValidationSummary ValidationGroup="Insert" ID="ValidationSummary2" ForeColor="Red" runat="server" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Connect4Database %>" SelectCommand="SELECT * FROM [LOCKER]" DeleteCommand="DELETE FROM [LOCKER] WHERE [LOCKER_NUM] = @LOCKER_NUM" InsertCommand="INSERT INTO [LOCKER] ([LOCKER_NUM], [LOCKER_TYPE], [GENDER], [RENTAL_SEMESTER], [EXPIRATION_DATE], [SRC_ID]) VALUES (@LOCKER_NUM, @LOCKER_TYPE, @GENDER, @RENTAL_SEMESTER, @EXPIRATION_DATE, @SRC_ID)" UpdateCommand="UPDATE [LOCKER] SET [LOCKER_TYPE] = @LOCKER_TYPE, [GENDER] = @GENDER, [RENTAL_SEMESTER] = @RENTAL_SEMESTER, [EXPIRATION_DATE] = @EXPIRATION_DATE, [SRC_ID] = @SRC_ID WHERE [LOCKER_NUM] = @LOCKER_NUM" ProviderName="<%$ ConnectionStrings:Connect4Database.ProviderName %>">
                <DeleteParameters>
                    <asp:Parameter Name="LOCKER_NUM" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="LOCKER_NUM" Type="String" />
                    <asp:Parameter Name="LOCKER_TYPE" Type="String" />
                    <asp:Parameter Name="GENDER" Type="String" />
                    <asp:Parameter Name="RENTAL_SEMESTER" Type="String" />
                    <asp:Parameter DbType="Date" Name="EXPIRATION_DATE" />
                    <asp:Parameter Name="SRC_ID" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="LOCKER_TYPE" Type="String" />
                    <asp:Parameter Name="GENDER" Type="String" />
                    <asp:Parameter Name="RENTAL_SEMESTER" Type="String" />
                    <asp:Parameter DbType="Date" Name="EXPIRATION_DATE" />
                    <asp:Parameter Name="SRC_ID" Type="String" />
                    <asp:Parameter Name="LOCKER_NUM" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
         </main>
            <p>&copy; <asp:Label ID="lblYear" runat="server"></asp:Label> 
                University of Louisville</p>
        </div>
</body>
</html>
