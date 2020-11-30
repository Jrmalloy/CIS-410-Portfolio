using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SRC_Project1
{
    public partial class Member_List : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!IsPostBack)
            {
                if (Session["Admin"] == null)
                {
                    if (Session["Employee"] == null)
                    {
                        Response.Redirect("Home.aspx"); //Prevent people from hard coding to gain access
                    }

                }
                MenuItem adminTools = Menu1.FindItem("Admin Tools");
                Menu1.Items.Remove(adminTools);
                MenuItem employeetools = Menu1.FindItem("Employee Tools");
                Menu1.Items.Remove(employeetools);


                if (Session["Name"] != null) //are you logged in?
                {
                    if (Session["Admin"] != null) //did I mess up coding somewhere? It's possible.
                    {
                        if ((bool)Session["Admin"]) //are you a manager?
                        {
                            Menu1.Items.Add(adminTools); //show admin tools
                            Menu1.Items.Add(employeetools); // display the employee tools
                        }
                    }
                    else if (Session["Employee"] != null)
                    {
                        if ((bool)Session["Employee"]) //same as above
                        {
                            Menu1.Items.Add(employeetools); //display employee tools
                        }
                    }
                }

            }
            
           
        }
        protected void lbInsert_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["SRC_ID"].DefaultValue =
                ((TextBox)GridView1.FooterRow.FindControl("SrcID")).Text;

            SqlDataSource1.InsertParameters["FIRST_NAME"].DefaultValue =
                ((TextBox)GridView1.FooterRow.FindControl("FirstName")).Text;

            SqlDataSource1.InsertParameters["LAST_NAME"].DefaultValue =
               ((TextBox)GridView1.FooterRow.FindControl("LastName")).Text;

            SqlDataSource1.InsertParameters["GRADUATION_DATE"].DefaultValue =
               ((TextBox)GridView1.FooterRow.FindControl("GraduationDate")).Text;

            SqlDataSource1.InsertParameters["MEMBER_DOB"].DefaultValue =
               ((TextBox)GridView1.FooterRow.FindControl("MemberDob")).Text;

            SqlDataSource1.InsertParameters["MAILING_ADDRESS"].DefaultValue =
               ((TextBox)GridView1.FooterRow.FindControl("MailingAddress")).Text;

            SqlDataSource1.InsertParameters["CITY"].DefaultValue =
               ((TextBox)GridView1.FooterRow.FindControl("City")).Text;

            SqlDataSource1.InsertParameters["STATE"].DefaultValue =
               ((TextBox)GridView1.FooterRow.FindControl("State")).Text;

            SqlDataSource1.InsertParameters["EMAIL"].DefaultValue =
               ((TextBox)GridView1.FooterRow.FindControl("Email")).Text;

            SqlDataSource1.InsertParameters["ZIP_CODE"].DefaultValue =
               ((TextBox)GridView1.FooterRow.FindControl("ZipCode")).Text;

            SqlDataSource1.InsertParameters["PHONE"].DefaultValue =
               ((TextBox)GridView1.FooterRow.FindControl("Phone")).Text;

            SqlDataSource1.InsertParameters["EMERGENCY_CONTACT_NAME"].DefaultValue =
               ((TextBox)GridView1.FooterRow.FindControl("EmergencyContactName")).Text;

            SqlDataSource1.InsertParameters["EMERGENCY_CONTACT_PHONE"].DefaultValue =
               ((TextBox)GridView1.FooterRow.FindControl("EmergencyContactPhone")).Text;

            SqlDataSource1.InsertParameters["PLACE_OF_EMPLOYMENT"].DefaultValue =
               ((TextBox)GridView1.FooterRow.FindControl("PlaceofEmployment")).Text;
           
            SqlDataSource1.InsertParameters["EMPLOYMENT_PHONE"].DefaultValue =
               ((TextBox)GridView1.FooterRow.FindControl("EmploymentPhone")).Text;

            SqlDataSource1.InsertParameters["GENDER"].DefaultValue =
               ((TextBox)GridView1.FooterRow.FindControl("Gender")).Text;

            SqlDataSource1.InsertParameters["MEMBER_PASSWORD"].DefaultValue =
               ((TextBox)GridView1.FooterRow.FindControl("MemberPassword")).Text;

            SqlDataSource1.InsertParameters["MEMBERSHIP_TYPE"].DefaultValue =
               ((TextBox)GridView1.FooterRow.FindControl("MembershipType")).Text;

            SqlDataSource1.InsertParameters["LOGIN_CODE"].DefaultValue =
               ((TextBox)GridView1.FooterRow.FindControl("MembershipStatus")).Text;

            SqlDataSource1.InsertParameters["MEMBERSHIP_LENGTH"].DefaultValue =
               ((TextBox)GridView1.FooterRow.FindControl("MembershipLength")).Text;

            SqlDataSource1.Insert();
        }
    }
}