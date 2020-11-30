using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SRC_Project1
{
    public partial class EmployeeList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Admin"] == null)
                {
                    Response.Redirect("Home.aspx"); //Prevent Employees or Members from hard coding employee list to gain access
                }
            }
 
        }

      
        protected void LnkInsert_Click(Object sender, EventArgs e)
        {


            CheckBox Status = ManagerTable.FooterRow.FindControl("ISMANAGER") as CheckBox; //This and the code below was to bypass the bool to string conversion the insertion code i made had

            if (Status.Checked)
            {
                string ch = "true";
                SqlDataSource1.InsertParameters["IS_MANAGER"].DefaultValue = ch;
            }
            else
            {
                string ch = "false";
                SqlDataSource1.InsertParameters["IS_MANAGER"].DefaultValue = ch;
            }


            //All of the code below is for the insertion, the one that needs some work is permissions. Need to find out a way to make it submit all of it instead of just the only one checked.
            SqlDataSource1.InsertParameters["EMP_ID"].DefaultValue = ((TextBox)ManagerTable.FooterRow.FindControl("EmployeeID")).Text;
            SqlDataSource1.InsertParameters["FIRST_NAME"].DefaultValue = ((TextBox)ManagerTable.FooterRow.FindControl("FirstName")).Text;
            SqlDataSource1.InsertParameters["LAST_NAME"].DefaultValue = ((TextBox)ManagerTable.FooterRow.FindControl("LastName")).Text;
            SqlDataSource1.InsertParameters["EMAIL"].DefaultValue = ((TextBox)ManagerTable.FooterRow.FindControl("Email")).Text;
            SqlDataSource1.InsertParameters["PHONE"].DefaultValue = ((TextBox)ManagerTable.FooterRow.FindControl("PhoneNumber")).Text;
            SqlDataSource1.InsertParameters["EMP_PASSWORD"].DefaultValue = ((TextBox)ManagerTable.FooterRow.FindControl("Password")).Text;

            SqlDataSource1.Insert();


        }
    }
}