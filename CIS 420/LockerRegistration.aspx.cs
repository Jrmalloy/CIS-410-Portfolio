using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace SRC_Project1
{
    public partial class LockerRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                MenuItem membertools = Menu1.FindItem("Member Options");
                Menu1.Items.Remove(membertools);

                if (Session["Name"] != null) //are you logged in?
                {

                    if (Session["Member"] != null)
                    {
                        if ((bool)Session["Member"])
                        {
                            Menu1.Items.Add(membertools);
                        }
                    }
                }
                else if (Session["Member"] == null)
                {

                    Response.Redirect("Home.aspx"); //Prevent people from hard coding to gain access

                }
            }
            if (RadioButtonList1.SelectedIndex == 0)
            {
                TextBox2.Text = "25$";
            }
            else if (RadioButtonList1.SelectedIndex == 1)
            {
                TextBox2.Text = "10$";
            }

            TextBox1.Text = Session["Name"].ToString();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(@"Data Source=sql5047.site4now.net;Persist Security Info=True;User ID=DB_A5A727_connect4admin_admin;Password=bl1tzcr4nk;"))
            {
                SqlCommand cmd = new SqlCommand("UPDATE LOCKER SET SRC_ID = @SRCID WHERE LOCKER_NUM = @LOCKERNUM");
                cmd.Parameters.AddWithValue("@SRCID", TextBox1.Text);
                cmd.Parameters.AddWithValue("@LOCKERNUM", DropDownList1.SelectedItem.Value);

                cmd.Connection = connection;

                connection.Open();

                cmd.ExecuteNonQuery();

                connection.Close();

                Label2.Text = "Successfully Registered For Locker";
            }
        }
    }
}