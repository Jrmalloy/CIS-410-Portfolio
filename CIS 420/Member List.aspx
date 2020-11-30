<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Member List.aspx.cs" Inherits="SRC_Project1.Member_List" %>

<!DOCTYPE html>

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
        .auto-style6 {
            margin-top: 69px;
        }
        .auto-style7 {
            width: 1000px;
            overflow: scroll;
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
         <div style="max-height:700px; margin-left:auto; margin-right:auto;" class="auto-style7">
              <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="SRC_ID" DataSourceID="SqlDataSource1" ShowFooter="True">
                <Columns>
                    
                 
                    
                    <asp:TemplateField HeaderText="SRC_ID" SortExpression="SRC_ID">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("SRC_ID") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("SRC_ID") %>'></asp:Label>
                        </ItemTemplate>

                             <FooterTemplate>
                            <asp:TextBox ID ="SrcID" runat="server"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="Insert" runat="server" 
                                ErrorMessage="SRC ID is a Required Field"
                                ControlToValidate="SrcID"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="FIRST_NAME" SortExpression="FIRST_NAME">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FIRST_NAME") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" 
                                ErrorMessage="First Name is a Required Field"
                                ControlToValidate="TextBox1"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("FIRST_NAME") %>'></asp:Label>
                        </ItemTemplate>
                           <FooterTemplate>
                            <asp:TextBox ID ="FirstName" runat="server"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="Insert" runat="server" 
                                ErrorMessage="First Name is a Required Field"
                                ControlToValidate="FirstName"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="LAST_NAME" SortExpression="LAST_NAME">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("LAST_NAME") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" 
                                ErrorMessage="Last Name is a Required Field"
                                ControlToValidate="TextBox2"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("LAST_NAME") %>'></asp:Label>
                        </ItemTemplate>
                           <FooterTemplate>
                            <asp:TextBox ID ="LastName" runat="server"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="Insert" runat="server" 
                                ErrorMessage="Last Name is a Required Field"
                                ControlToValidate="LastName"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>



                    <asp:TemplateField HeaderText="GRADUATION_DATE" SortExpression="GRADUATION_DATE">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("GRADUATION_DATE") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" 
                                ErrorMessage="Graduation Date is a Required Field"
                                ControlToValidate="TextBox3"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("GRADUATION_DATE") %>'></asp:Label>
                        </ItemTemplate>
                           <FooterTemplate>
                            <asp:TextBox ID ="GraduationDate" runat="server"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="Insert" runat="server" 
                                ErrorMessage="Graduation Date is a Required Field"
                                ControlToValidate="GraduationDate"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>



                    <asp:TemplateField HeaderText="MEMBER_DOB" SortExpression="MEMBER_DOB">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("MEMBER_DOB") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server" 
                                ErrorMessage="Member DOB is a Required Field"
                                ControlToValidate="TextBox4"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("MEMBER_DOB") %>'></asp:Label>
                        </ItemTemplate>
                           <FooterTemplate>
                            <asp:TextBox ID ="MemberDob" runat="server"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ValidationGroup="Insert" runat="server" 
                                ErrorMessage="Member DOB is a Required Field"
                                ControlToValidate="MemberDob"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>



                    <asp:TemplateField HeaderText="MAILING_ADDRESS" SortExpression="MAILING_ADDRESS">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("MAILING_ADDRESS") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator34" runat="server" 
                                ErrorMessage="Mailing Adddress is a Required Field"
                                ControlToValidate="TextBox5"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("MAILING_ADDRESS") %>'></asp:Label>
                        </ItemTemplate>
                           <FooterTemplate>
                            <asp:TextBox ID ="MailingAddress" runat="server"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ValidationGroup="Insert" runat="server" 
                                ErrorMessage="SRC ID is a Required Field"
                                ControlToValidate="MailingAddress"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>




                    <asp:TemplateField HeaderText="CITY" SortExpression="CITY">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("CITY") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator35" runat="server" 
                                ErrorMessage="City is a Required Field"
                                ControlToValidate="TextBox6"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("CITY") %>'></asp:Label>
                        </ItemTemplate>
                           <FooterTemplate>
                            <asp:TextBox ID ="City" runat="server"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ValidationGroup="Insert" runat="server" 
                                ErrorMessage="City is a Required Field"
                                ControlToValidate="City"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>



                    <asp:TemplateField HeaderText="STATE" SortExpression="STATE">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("STATE") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator36" runat="server" 
                                ErrorMessage="State is a Required Field"
                                ControlToValidate="TextBox7"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label8" runat="server" Text='<%# Bind("STATE") %>'></asp:Label>
                        </ItemTemplate>
                           <FooterTemplate>
                            <asp:TextBox ID ="State" runat="server"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ValidationGroup="Insert" runat="server" 
                                ErrorMessage="State is a Required Field"
                                ControlToValidate="State"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>



                    <asp:TemplateField HeaderText="ZIP_CODE" SortExpression="ZIP_CODE">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("ZIP_CODE") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator37" runat="server" 
                                ErrorMessage="Zip Code is a Required Field"
                                ControlToValidate="TextBox8"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label9" runat="server" Text='<%# Bind("ZIP_CODE") %>'></asp:Label>
                        </ItemTemplate>
                           <FooterTemplate>
                            <asp:TextBox ID ="ZipCode" runat="server"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ValidationGroup="Insert" runat="server" 
                                ErrorMessage="ZipCode is a Required Field"
                                ControlToValidate="ZipCode"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>



                    <asp:TemplateField HeaderText="EMAIL" SortExpression="EMAIL">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("EMAIL") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator38" runat="server" 
                                ErrorMessage="Email is a Required Field"
                                ControlToValidate="TextBox9"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label10" runat="server" Text='<%# Bind("EMAIL") %>'></asp:Label>
                        </ItemTemplate>
                           <FooterTemplate>
                            <asp:TextBox ID ="Email" runat="server"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ValidationGroup="Insert" runat="server" 
                                ErrorMessage="Email is a Required Field"
                                ControlToValidate="Email"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>



                    <asp:TemplateField HeaderText="PHONE" SortExpression="PHONE">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("PHONE") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator39" runat="server" 
                                ErrorMessage="Phone is a Required Field"
                                ControlToValidate="TextBox10"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label11" runat="server" Text='<%# Bind("PHONE") %>'></asp:Label>
                        </ItemTemplate>
                           <FooterTemplate>
                            <asp:TextBox ID ="Phone" runat="server"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator12" ValidationGroup="Insert" runat="server" 
                                ErrorMessage="Phone is a Required Field"
                                ControlToValidate="Phone"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>



                    <asp:TemplateField HeaderText="EMERGENCY_CONTACT_NAME" SortExpression="EMERGENCY_CONTACT_NAME">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("EMERGENCY_CONTACT_NAME") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator40" runat="server" 
                                ErrorMessage="Emergency Contact Name is a Required Field"
                                ControlToValidate="TextBox11"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label12" runat="server" Text='<%# Bind("EMERGENCY_CONTACT_NAME") %>'></asp:Label>
                        </ItemTemplate>
                           <FooterTemplate>
                            <asp:TextBox ID ="EmergencyContactName" runat="server"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator13" ValidationGroup="Insert" runat="server" 
                                ErrorMessage="Emergency Contact Name is a Required Field"
                                ControlToValidate="EmergencyContactName"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>



                    <asp:TemplateField HeaderText="EMERGENCY_CONTACT_PHONE" SortExpression="EMERGENCY_CONTACT_PHONE">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("EMERGENCY_CONTACT_PHONE") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator41" runat="server" 
                                ErrorMessage="Emergency Contact Phone is a Required Field"
                                ControlToValidate="TextBox12"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label13" runat="server" Text='<%# Bind("EMERGENCY_CONTACT_PHONE") %>'></asp:Label>
                        </ItemTemplate>
                           <FooterTemplate>
                            <asp:TextBox ID ="EmergencyContactPhone" runat="server"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator14" ValidationGroup="Insert" runat="server" 
                                ErrorMessage="Emergency Contact Phone is a Required Field"
                                ControlToValidate="EmergencyContactPhone"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>



                    <asp:TemplateField HeaderText="PLACE_OF_EMPLOYMENT" SortExpression="PLACE_OF_EMPLOYMENT">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox13" runat="server" Text='<%# Bind("PLACE_OF_EMPLOYMENT") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator42" runat="server" 
                                ErrorMessage="Locker Type is a Required Field"
                                ControlToValidate="TextBox13"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label14" runat="server" Text='<%# Bind("PLACE_OF_EMPLOYMENT") %>'></asp:Label>
                        </ItemTemplate>
                           <FooterTemplate>
                            <asp:TextBox ID ="PlaceofEmployment" runat="server"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredField15" ValidationGroup="Insert" runat="server" 
                                ErrorMessage="Place of Employment is a Required Field"
                                ControlToValidate="PlaceofEmployment"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>



                    <asp:TemplateField HeaderText="EMPLOYMENT_PHONE" SortExpression="EMPLOYMENT_PHONE">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox14" runat="server" Text='<%# Bind("EMPLOYMENT_PHONE") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator43" runat="server" 
                                ErrorMessage="Employment Phone is a Required Field"
                                ControlToValidate="TextBox14"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label15" runat="server" Text='<%# Bind("EMPLOYMENT_PHONE") %>'></asp:Label>
                        </ItemTemplate>
                           <FooterTemplate>
                            <asp:TextBox ID ="EmploymentPhone" runat="server"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator16" ValidationGroup="Insert" runat="server" 
                                ErrorMessage="Employment Phone is a Required Field"
                                ControlToValidate="EmploymentPhone"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>



                    <asp:TemplateField HeaderText="GENDER" SortExpression="GENDER">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox15" runat="server" Text='<%# Bind("GENDER") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator44" runat="server" 
                                ErrorMessage="Gender is a Required Field"
                                ControlToValidate="TextBox15"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label16" runat="server" Text='<%# Bind("GENDER") %>'></asp:Label>
                        </ItemTemplate>
                           <FooterTemplate>
                            <asp:TextBox ID ="Gender" runat="server"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator17" ValidationGroup="Insert" runat="server" 
                                ErrorMessage="Gender is a Required Field"
                                ControlToValidate="Gender"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>



                    <asp:TemplateField HeaderText="MEMBER_PASSWORD" SortExpression="MEMBER_PASSWORD">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox16" runat="server" Text='<%# Bind("MEMBER_PASSWORD") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator45" runat="server" 
                                ErrorMessage="Member Password is a Required Field"
                                ControlToValidate="TextBox16"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label17" runat="server" Text='<%# Bind("MEMBER_PASSWORD") %>'></asp:Label>
                        </ItemTemplate>
                           <FooterTemplate>
                            <asp:TextBox ID ="MemberPassword" runat="server"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator18" ValidationGroup="Insert" runat="server" 
                                ErrorMessage="Member Password is a Required Field"
                                ControlToValidate="MemberPassword"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>



                    <asp:TemplateField HeaderText="MEMBERSHIP_TYPE" SortExpression="MEMBERSHIP_TYPE">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox17" runat="server" Text='<%# Bind("MEMBERSHIP_TYPE") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator46" runat="server" 
                                ErrorMessage="Membership Type is a Required Field"
                                ControlToValidate="TextBox17"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label18" runat="server" Text='<%# Bind("MEMBERSHIP_TYPE") %>'></asp:Label>
                        </ItemTemplate>
                           <FooterTemplate>
                            <asp:TextBox ID ="MembershipType" runat="server"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator19" ValidationGroup="Insert" runat="server" 
                                ErrorMessage="Membership Type is a Required Field"
                                ControlToValidate="MembershipType"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>



                    <asp:TemplateField HeaderText="LOGIN_CODE" SortExpression="LOGIN_CODE">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox18" runat="server" Text='<%# Bind("LOGIN_CODE") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator47" runat="server" 
                                ErrorMessage="Login code is a Required Field"
                                ControlToValidate="TextBox18"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label19" runat="server" Text='<%# Bind("LOGIN_CODE") %>'></asp:Label>
                        </ItemTemplate>
                           <FooterTemplate>
                            <asp:TextBox ID ="logincode" runat="server"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator20" ValidationGroup="Insert" runat="server" 
                                ErrorMessage="Login Code is a Required Field"
                                ControlToValidate="logincode"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>



                    <asp:TemplateField HeaderText="MEMBERSHIP_LENGTH" SortExpression="MEMBERSHIP_LENGTH">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox19" runat="server" Text='<%# Bind("MEMBERSHIP_LENGTH") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator48" runat="server" 
                                ErrorMessage="Membership Length is a Required Field"
                                ControlToValidate="TextBox19"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label20" runat="server" Text='<%# Bind("MEMBERSHIP_LENGTH") %>'></asp:Label>
                        </ItemTemplate>
                           <FooterTemplate>
                            <asp:TextBox ID ="MembershipLength" runat="server"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator21" ValidationGroup="Insert" runat="server" 
                                ErrorMessage="Membership Length is a Required Field"
                                ControlToValidate="MembershipLength"
                                Text="*"
                                ForeColor="Red"
                                ></asp:RequiredFieldValidator>
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
                            <asp:LinkButton OnClick="lbInsert_Click" ValidationGroup="Insert" ID="LnkInsert" Text="Insert" runat="server" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Connect4Database %>" DeleteCommand="DELETE FROM [MEMBER] WHERE [SRC_ID] = @SRC_ID" InsertCommand="INSERT INTO [MEMBER] ([SRC_ID], [FIRST_NAME], [LAST_NAME], [GRADUATION_DATE], [MEMBER_DOB], [MAILING_ADDRESS], [CITY], [STATE], [ZIP_CODE], [EMAIL], [PHONE], [EMERGENCY_CONTACT_NAME], [EMERGENCY_CONTACT_PHONE], [PLACE_OF_EMPLOYMENT], [EMPLOYMENT_PHONE], [GENDER], [MEMBER_PASSWORD], [MEMBERSHIP_TYPE], [MEMBERSHIP_LENGTH]) VALUES (@SRC_ID, @FIRST_NAME, @LAST_NAME, @GRADUATION_DATE, @MEMBER_DOB, @MAILING_ADDRESS, @CITY, @STATE, @ZIP_CODE, @EMAIL, @PHONE, @EMERGENCY_CONTACT_NAME, @EMERGENCY_CONTACT_PHONE, @PLACE_OF_EMPLOYMENT, @EMPLOYMENT_PHONE, @GENDER, @MEMBER_PASSWORD, @MEMBERSHIP_TYPE, @MEMBERSHIP_LENGTH)" SelectCommand="SELECT * FROM [MEMBER]" UpdateCommand="UPDATE [MEMBER] SET [FIRST_NAME] = @FIRST_NAME, [LAST_NAME] = @LAST_NAME, [GRADUATION_DATE] = @GRADUATION_DATE, [MEMBER_DOB] = @MEMBER_DOB, [MAILING_ADDRESS] = @MAILING_ADDRESS, [CITY] = @CITY, [STATE] = @STATE, [ZIP_CODE] = @ZIP_CODE, [EMAIL] = @EMAIL, [PHONE] = @PHONE, [EMERGENCY_CONTACT_NAME] = @EMERGENCY_CONTACT_NAME, [EMERGENCY_CONTACT_PHONE] = @EMERGENCY_CONTACT_PHONE, [PLACE_OF_EMPLOYMENT] = @PLACE_OF_EMPLOYMENT, [EMPLOYMENT_PHONE] = @EMPLOYMENT_PHONE, [GENDER] = @GENDER, [MEMBER_PASSWORD] = @MEMBER_PASSWORD, [MEMBERSHIP_TYPE] = @MEMBERSHIP_TYPE, [MEMBERSHIP_LENGTH] = @MEMBERSHIP_LENGTH WHERE [SRC_ID] = @SRC_ID">
                <DeleteParameters>
                    <asp:Parameter Name="SRC_ID" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="SRC_ID" Type="String" />
                    <asp:Parameter Name="FIRST_NAME" Type="String" />
                    <asp:Parameter Name="LAST_NAME" Type="String" />
                    <asp:Parameter Name="GRADUATION_DATE" Type="String" />
                    <asp:Parameter Name="MEMBER_DOB" Type="String" />
                    <asp:Parameter Name="MAILING_ADDRESS" Type="String" />
                    <asp:Parameter Name="CITY" Type="String" />
                    <asp:Parameter Name="STATE" Type="String" />
                    <asp:Parameter Name="ZIP_CODE" Type="String" />
                    <asp:Parameter Name="EMAIL" Type="String" />
                    <asp:Parameter Name="PHONE" Type="String" />
                    <asp:Parameter Name="EMERGENCY_CONTACT_NAME" Type="String" />
                    <asp:Parameter Name="EMERGENCY_CONTACT_PHONE" Type="String" />
                    <asp:Parameter Name="PLACE_OF_EMPLOYMENT" Type="String" />
                    <asp:Parameter Name="EMPLOYMENT_PHONE" Type="String" />
                    <asp:Parameter Name="LOGIN_CODE" Type="String" />
                    <asp:Parameter Name="GENDER" Type="String" />
                    <asp:Parameter Name="MEMBER_PASSWORD" Type="String" />
                    <asp:Parameter Name="MEMBERSHIP_TYPE" Type="String" />
                    <asp:Parameter Name="MEMBERSHIP_LENGTH" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FIRST_NAME" Type="String" />
                    <asp:Parameter Name="LAST_NAME" Type="String" />
                    <asp:Parameter Name="GRADUATION_DATE" Type="String" />
                    <asp:Parameter Name="MEMBER_DOB" Type="String" />
                    <asp:Parameter Name="MAILING_ADDRESS" Type="String" />
                    <asp:Parameter Name="CITY" Type="String" />
                    <asp:Parameter Name="STATE" Type="String" />
                    <asp:Parameter Name="ZIP_CODE" Type="String" />
                    <asp:Parameter Name="EMAIL" Type="String" />
                    <asp:Parameter Name="PHONE" Type="String" />
                    <asp:Parameter Name="EMERGENCY_CONTACT_NAME" Type="String" />
                    <asp:Parameter Name="EMERGENCY_CONTACT_PHONE" Type="String" />
                    <asp:Parameter Name="PLACE_OF_EMPLOYMENT" Type="String" />
                    <asp:Parameter Name="EMPLOYMENT_PHONE" Type="String" />
                    <asp:Parameter Name="GENDER" Type="String" />
                    <asp:Parameter Name="MEMBER_PASSWORD" Type="String" />
                    <asp:Parameter Name="MEMBERSHIP_TYPE" Type="String" />
                    <asp:Parameter Name="LOGIN_CODE" Type="String" />
                    
                    <asp:Parameter Name="MEMBERSHIP_LENGTH" Type="Int32" />
                    <asp:Parameter Name="SRC_ID" Type="String" />
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
