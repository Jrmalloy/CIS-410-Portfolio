<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeList.aspx.cs" Inherits="SRC_Project1.EmployeeList" %>

<%@ Register src="DataFilter.ascx" tagname="DataFilter" tagprefix="uc1" %>

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
        <div style="max-height:700px;margin-left:auto; margin-right:auto;">

             <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Connect4Database %>" DeleteCommand="DELETE FROM [EMPLOYEE] WHERE [EMP_ID] = @EMP_ID" InsertCommand="INSERT INTO [EMPLOYEE] ([EMP_ID], [FIRST_NAME], [LAST_NAME], [EMAIL], [PHONE], [EMP_PASSWORD], [IS_MANAGER]) VALUES (@EMP_ID, @FIRST_NAME, @LAST_NAME, @EMAIL, @PHONE, @EMP_PASSWORD, @IS_MANAGER)" SelectCommand="SELECT * FROM [EMPLOYEE]" UpdateCommand="UPDATE [EMPLOYEE] SET [FIRST_NAME] = @FIRST_NAME, [LAST_NAME] = @LAST_NAME, [EMAIL] = @EMAIL, [PHONE] = @PHONE, [EMP_PASSWORD] = @EMP_PASSWORD, [IS_MANAGER] = @IS_MANAGER WHERE [EMP_ID] = @EMP_ID">
                <DeleteParameters>
                    <asp:Parameter Name="EMP_ID" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="EMP_ID" Type="String" />
                    <asp:Parameter Name="FIRST_NAME" Type="String" />
                    <asp:Parameter Name="LAST_NAME" Type="String" />
                    <asp:Parameter Name="EMAIL" Type="String" />
                    <asp:Parameter Name="PHONE" Type="String" />
                    <asp:Parameter Name="EMP_PASSWORD" Type="String" />
                    <asp:Parameter Name="IS_MANAGER" Type="Boolean" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FIRST_NAME" Type="String" />
                    <asp:Parameter Name="LAST_NAME" Type="String" />
                    <asp:Parameter Name="EMAIL" Type="String" />
                    <asp:Parameter Name="PHONE" Type="String" />
                    <asp:Parameter Name="EMP_PASSWORD" Type="String" />
                    <asp:Parameter Name="IS_MANAGER" Type="Boolean" />
                    <asp:Parameter Name="EMP_ID" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
           

                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
           

          <asp:GridView ID="ManagerTable" runat="server" AutoGenerateColumns="False" CellPadding="4" ShowFooter="True" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" DataKeyNames="EMP_ID" DataSourceID="SqlDataSource1" AllowPaging="True" HorizontalAlign="Center" AllowSorting="True" >
                <Columns>
                  
                    <asp:TemplateField HeaderText="EMP_ID" SortExpression="EMP_ID">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBoxID" runat="server" Text='<%# Eval("EMP_ID") %>'></asp:TextBox>
                             <asp:RequiredFieldValidator ID="rfvID" runat="server" 
                                ErrorMessage="EMP_ID is a required field"
                                ControlToValidate="TextBoxID" Text="*" ForeColor="Red">
                             </asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("EMP_ID") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
 
                            <asp:TextBox ID="EmployeeID" runat="server"></asp:TextBox>
                             <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvID2" runat="server" 
                                ErrorMessage="EMP_ID is a required field"
                                ControlToValidate="EmployeeID" Text="*" ForeColor="Red">
                             </asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="FIRST_NAME" SortExpression="FIRST_NAME">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FIRST_NAME") %>'></asp:TextBox>
                             <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" 
                                 ErrorMessage="First Name is a required field"
                                 ControlToValidate="TextBox1" Text="*" ForeColor="Red">
                             </asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("FIRST_NAME") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="FirstName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvFirstName2" runat="server" 
                                 ErrorMessage="First Name is a required field"
                                 ControlToValidate="FirstName" Text="*" ForeColor="Red">
                             </asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="LAST_NAME" SortExpression="LAST_NAME">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("LAST_NAME") %>'></asp:TextBox>
                             <asp:RequiredFieldValidator ID="rfvLastName" runat="server" 
                                 ErrorMessage="Last Name is a required field"
                                 ControlToValidate="TextBox2" Text="*" ForeColor="Red">
                             </asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("LAST_NAME") %>'></asp:Label>
                        </ItemTemplate>
                         <FooterTemplate>
                            <asp:TextBox ID="LastName" runat="server"></asp:TextBox>
                              <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvLastName2" runat="server" 
                                 ErrorMessage="Last Name is a required field"
                                 ControlToValidate="LastName" Text="*" ForeColor="Red">
                             </asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="EMAIL" SortExpression="EMAIL">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("EMAIL") %>'></asp:TextBox>
                             <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                                ErrorMessage="Email is a required field"
                                ControlToValidate="TextBox3" Text="*" ForeColor="Red">
                             </asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("EMAIL") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvEmail2" runat="server" 
                                ErrorMessage="Email is a required field"
                                ControlToValidate="Email" Text="*" ForeColor="Red">
                             </asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="PHONE" SortExpression="PHONE">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("PHONE") %>'></asp:TextBox>
                             <asp:RequiredFieldValidator ID="rfvPhone" runat="server" 
                                 ErrorMessage="Phone is a required field"
                                 ControlToValidate="TextBox4" Text="*" ForeColor="Red">
                             </asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("PHONE") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="PhoneNumber" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvPhone2" runat="server" 
                                 ErrorMessage="Phone is a required field"
                                 ControlToValidate="PhoneNumber" Text="*" ForeColor="Red">
                             </asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="EMP_PASSWORD" SortExpression="EMP_PASSWORD">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("EMP_PASSWORD") %>'></asp:TextBox>
                             <asp:RequiredFieldValidator ID="rfvPassword" runat="server" 
                                 ErrorMessage="Password is a required field"
                                  ControlToValidate="TextBox5" Text="*" ForeColor="Red">
                             </asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("EMP_PASSWORD") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="Password" runat="server"></asp:TextBox>
                             <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvPassword2" runat="server" 
                                 ErrorMessage="Password is a required field"
                                  ControlToValidate="Password" Text="*" ForeColor="Red">
                             </asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="IS_MANAGER" SortExpression="IS_MANAGER">
                        <EditItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("IS_MANAGER") %>' />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("IS_MANAGER") %>' Enabled="True" />
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:CheckBox ID="IsMANAGER" runat="server" Checked='<%# Bind("IS_MANAGER") %>' Enabled="True" />
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
                            <asp:LinkButton ValidationGroup="INSERT" OnClick="LnkInsert_Click" ID="LnkInsert" Text="Insert" runat="server" />
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
           </ContentTemplate>
                 </asp:UpdatePanel>
        </div>
    </form>
         </main>
            <p>&copy; <asp:Label ID="lblYear" runat="server"></asp:Label> 
                University of Louisville</p>
        </div>
        </body>
</html>
