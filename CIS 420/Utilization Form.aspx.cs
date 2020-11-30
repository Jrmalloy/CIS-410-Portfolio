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
    public partial class Utilization_Form : System.Web.UI.Page
    {
       static int Num1 = 0;
       static int Num2 = 0;
       static int Num3 = 0;
       static int Num4 = 0;
       static int Num5 = 0;


        protected void Page_Load(object sender, EventArgs e)
        {
            Date.Text = DateTime.Now.ToString("MM-dd-yyyy");
            Label2.Text = Session["Name"].ToString();
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

        protected void MaleIn_Click(object sender, EventArgs e)
        {
            if(Num1 > 0)
            {
                int Num1 = Convert.ToInt32(Male.Text);
                Num1++;
                Male.Text = Num1.ToString();
            }
            else
            {
                Num1++;
                Male.Text = Num1.ToString();
            }
            
        }

        protected void MaleDe_Click(object sender, EventArgs e)
        {
            int Num1 = Convert.ToInt32(Male.Text);
            if (Num1 > 0)
            {
                Num1--;
                Male.Text = Convert.ToString(Num1);
            }
            else
                Label1.Text = "You cannot have a negative value";
        }

        protected void FemaleIn_Click(object sender, EventArgs e)
        {
            if (Num2 > 0)
            {
                int Num2 = Convert.ToInt32(Female.Text);
                Num2++;
                Female.Text = Num2.ToString();
            }
            else
            {
                Num2++;
                Female.Text = Num2.ToString();
            }
        }

        protected void FemaleDe_Click(object sender, EventArgs e)
        {
            int Num2 = Convert.ToInt32(Female.Text);
            if (Num2 > 0)
            {
                Num2--;
                Female.Text = Convert.ToString(Num2);
            }
            else
                Label1.Text = "You cannot have a negative value";
        }

        protected void WhiteIn_Click(object sender, EventArgs e)
        {
            if (Num3 > 0)
            {
                int Num3 = Convert.ToInt32(White.Text);
                Num3++;
                White.Text = Num3.ToString();
            }
            else
            {
                Num3++;
                White.Text = Num3.ToString();
            }
        }

        protected void WhiteDe_Click(object sender, EventArgs e)
        {
            int Num3 = Convert.ToByte(White.Text);
            if (Num3 > 0)
            {
                Num3--;
                White.Text = Convert.ToString(Num3);
            }
            else
                Label1.Text = "You cannot have a negative value";
        }

        protected void BlackIn_Click(object sender, EventArgs e)
        {
            if (Num4 > 0)
            {
                int Num4 = Convert.ToInt32(Black.Text);
                Num4++;
                Black.Text = Num4.ToString();
            }
            else
            {
                Num4++;
                Black.Text = Num4.ToString();
            }
        }

        protected void BlackDe_Click(object sender, EventArgs e)
        {
            int Num4 = Convert.ToByte(Black.Text);
            if (Num4 > 0)
            {
                Num4--;
                Black.Text = Convert.ToString(Num4);
            }
            else
                Label1.Text = "You cannot have a negative value";
        }

        protected void OtherIn_Click(object sender, EventArgs e)
        {
            if (Num5 > 0)
            {
                int Num5 = Convert.ToInt32(Other.Text);
                Num5++;
                Other.Text = Num5.ToString();
            }
            else
            {
                Num5++;
                Other.Text = Num5.ToString();
            }
        }

        protected void OtherDe_Click(object sender, EventArgs e)
        {
            int Num5 = Convert.ToByte(Other.Text);
            if (Num5 > 0)
            {
                Num5 = Num5 - 1;
                Other.Text = Convert.ToString(Num5);
            }
            else
                Label1.Text = "You cannot have a negative value";
        }

        protected void Insert_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(@"Data Source=sql5047.site4now.net;Persist Security Info=True;User ID=DB_A5A727_connect4admin_admin;Password=bl1tzcr4nk;"))
            {
                SqlCommand cmd1 = new SqlCommand("select MAX(UTILIZATION_NUM) from UTILIZATION", connection);
                connection.Open();
                cmd1.CommandType = CommandType.Text;


                SqlDataReader theReader = cmd1.ExecuteReader();

                if (theReader.Read())
                {

                    this.TextBox1.Text = theReader.GetByte(0).ToString("");


                }



            }
            Label1.Text = "";

            DateTime date1 = Convert.ToDateTime(Date.Text);
            DateTime time1 = Convert.ToDateTime(Time.Text);
            Byte Male1 = Convert.ToByte(Male.Text);
            Byte Female1 = Convert.ToByte(Female.Text);
            Byte White1 = Convert.ToByte(White.Text);
            Byte Black1 = Convert.ToByte(Black.Text);
            Byte Other1 = Convert.ToByte(Other.Text);

            using (SqlConnection connection = new SqlConnection(@"Data Source=sql5047.site4now.net;Persist Security Info=True;User ID=DB_A5A727_connect4admin_admin;Password=bl1tzcr4nk;"))
            {
                string selected = Session["Name"].ToString();
                int Num = Convert.ToByte(TextBox1.Text);

                SqlCommand cmd = new SqlCommand("insert into Utilization (UTILIZATION_NUM, DATE, TIME,GYM_AREA,MALE_COUNT,FEMALE_COUNT,CAUCASIAN_COUNT,AFRICAN_AMERICAN_COUNT,OTHER_COUNT,EMP_ID) Values (@UNUM, @date, @time,@area,@male,@female,@white,@black,@other,@empid)");
                cmd.Parameters.AddWithValue("@UNUM", Num + 1);
                cmd.Parameters.AddWithValue("@date", date1);
                cmd.Parameters.AddWithValue("@time", time1);
                cmd.Parameters.AddWithValue("@area",Area.Text);
                cmd.Parameters.AddWithValue("@male", Male1);
                cmd.Parameters.AddWithValue("@female", Female1);
                cmd.Parameters.AddWithValue("@black", Black1);
                cmd.Parameters.AddWithValue("@white", White1);
                cmd.Parameters.AddWithValue("@other", Other1);
                cmd.Parameters.AddWithValue("@empid", selected);


                cmd.Connection = connection;

                connection.Open();

                cmd.ExecuteNonQuery();

                connection.Close();

                Label1.Text = "Successfully Inserted Record";
              
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Male.Text = "";
            Female.Text = "";
            White.Text = "";
            Black.Text = "";
            Other.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Utilization.aspx");
        }
    }
}