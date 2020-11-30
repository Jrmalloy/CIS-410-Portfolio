using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace SRC_Project1
{
    public partial class Locker_List : System.Web.UI.Page
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
        protected void LnkInsert_Click(Object sender, EventArgs e) 
        {


            SqlDataSource1.InsertParameters["LOCKER_NUM"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("LockerNum")).Text;
            SqlDataSource1.InsertParameters["LOCKER_TYPE"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("LockerType")).Text;
            SqlDataSource1.InsertParameters["GENDER"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("Gender")).Text;
            SqlDataSource1.InsertParameters["RENTAL_SEMESTER"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("RentalSemester")).Text;
            SqlDataSource1.InsertParameters["EXPIRATION_DATE"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("ExpirationDate")).Text;
            using (SqlConnection connection = new SqlConnection(@"Data Source=sql5047.site4now.net;Persist Security Info=True;User ID=DB_A5A727_connect4admin_admin;Password=bl1tzcr4nk;"))
            {
                if (((TextBox)GridView1.FooterRow.FindControl("SRCID")).Text == "")
                {
                    SqlDataSource1.InsertParameters["SRC_ID"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("SRCID")).Text;
                    SqlDataSource1.Insert();
                    Label6.Text = "";
                }
                else
                {
                    string checksrcID = "select count(*) FROM MEMBER where SRC_ID=@srcID";
                    SqlCommand com = new SqlCommand(checksrcID, connection);
                    com.Parameters.AddWithValue("@srcID", ((TextBox)GridView1.FooterRow.FindControl("SRCID")).Text);
                    connection.Open();
                    int temp = int.Parse(com.ExecuteScalar().ToString());
                    if (temp == 1)
                    {
                        SqlDataSource1.InsertParameters["SRC_ID"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("SRCID")).Text;
                        SqlDataSource1.Insert();
                        Label6.Text = "";
                    }
                    else
                        Label6.Text = "A member with this SRC ID does not Exist";

                }
            }


          

        }
      
    }
}