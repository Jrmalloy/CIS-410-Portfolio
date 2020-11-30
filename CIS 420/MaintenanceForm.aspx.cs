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
    public partial class MaintenanceForm : System.Web.UI.Page
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
       
        
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Text = "";
            DateInspectedText.Text = "";
            CommentsText.Text = "";
            string selected = DropDownList1.SelectedItem.Value;
            using (SqlConnection connection = new SqlConnection(@"Data Source=sql5047.site4now.net;Persist Security Info=True;User ID=DB_A5A727_connect4admin_admin;Password=bl1tzcr4nk;"))
            {
                SqlCommand theCommand = new SqlCommand("SELECT MACHINE_NUM, MACHINE_NAME, SERIAL_NUM, PURCHASE_DATE, MACHINE_TYPE, LAST_SERVICE FROM MACHINE WHERE MACHINE_NUM = @MachineNum ", connection);
                connection.Open();
                theCommand.Parameters.AddWithValue("@MachineNum", selected);
                theCommand.CommandType = CommandType.Text;


                SqlDataReader theReader = theCommand.ExecuteReader();

                if (theReader.Read())
                {
                   
                    this.NameText.Text = theReader.GetString(1);
                    this.SerialText.Text = theReader.GetString(2);
                    this.DatePurchasedText.Text = theReader.GetDateTime(3).ToString("MM/dd/yyyy");
                    this.MachineTypeText.Text = theReader.GetString(4);
                    this.LastServicedText.Text = theReader.GetDateTime(5).ToString("MM/dd/yyyy");



                }
                connection.Close();

            }

        }

        protected void insertBtn_Click(object sender, EventArgs e)
        {
           
            using (SqlConnection connection = new SqlConnection(@"Data Source=sql5047.site4now.net;Persist Security Info=True;User ID=DB_A5A727_connect4admin_admin;Password=bl1tzcr4nk;"))
            {
                SqlCommand cmd1 = new SqlCommand("select MAX(MAINTENANCE_NUM) from MAINTENANCE", connection);
                connection.Open();
                cmd1.CommandType = CommandType.Text;


                SqlDataReader theReader = cmd1.ExecuteReader();

                if (theReader.Read())
                {

                    this.TextBox1.Text = theReader.GetByte(0).ToString("");


                }



            }

            string selected = DropDownList1.SelectedItem.Value;
            DateTime date = Convert.ToDateTime(DateInspectedText.Text);
            DateTime date1 = Convert.ToDateTime(LastServicedText.Text);
            int Num = Convert.ToByte(TextBox1.Text);
            using (SqlConnection connection = new SqlConnection(@"Data Source=sql5047.site4now.net;Persist Security Info=True;User ID=DB_A5A727_connect4admin_admin;Password=bl1tzcr4nk;"))
            {
               
                SqlCommand cmd = new SqlCommand("insert into MAINTENANCE (MAINTENANCE_NUM, MACHINE_NUM, DATE_CHECKED,LAST_SERVICE,COMMENTS) Values (@MNUM, @Num, @Check,@Service,@Comment)");
                cmd.Parameters.AddWithValue("@MNUM",Num + 1);
                cmd.Parameters.AddWithValue("@Num", selected);
                cmd.Parameters.AddWithValue("@Check", date);
                cmd.Parameters.AddWithValue("@Service", date1);
                cmd.Parameters.AddWithValue("@Comment", CommentsText.Text);
                
                cmd.Connection = connection;

                connection.Open();

                cmd.ExecuteNonQuery();

                connection.Close();

                Label1.Text = "Successfully Inserted Record";
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Maintenance.aspx");
        }
    }
}