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
    public partial class MemberAccount : System.Web.UI.Page
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
                Label1.Text = Session["Name"].ToString();
                TextBox1.Text = Session["Name"].ToString();

                using (SqlConnection connection = new SqlConnection(@"Data Source=sql5047.site4now.net;Persist Security Info=True;User ID=DB_A5A727_connect4admin_admin;Password=bl1tzcr4nk;"))
                {
                    SqlCommand theCommand = new SqlCommand("Select FIRST_NAME , LAST_NAME, GRADUATION_DATE, MEMBER_DOB, MAILING_ADDRESS, CITY, STATE, ZIP_CODE, EMAIL, PHONE, EMERGENCY_CONTACT_NAME, EMERGENCY_CONTACT_PHONE, PLACE_OF_EMPLOYMENT, EMPLOYMENT_PHONE, GENDER, MEMBER_PASSWORD, MEMBERSHIP_TYPE, MEMBERSHIP_LENGTH FROM  MEMBER WHERE SRC_ID = @SRCID", connection);
                    connection.Open();
                    theCommand.Parameters.AddWithValue("@SRCID", Label1.Text);
                    theCommand.CommandType = CommandType.Text;


                    SqlDataReader theReader = theCommand.ExecuteReader();

                    if (theReader.Read())
                    {
                        this.FNameText.Text = theReader.GetString(0);
                        this.LNameText.Text = theReader.GetString(1);
                        this.GradText.Text = theReader.GetString(2);
                        this.DOBText.Text = theReader.GetString(3);
                        this.AddressText.Text = theReader.GetString(4);
                        this.CityText.Text = theReader.GetString(5);
                        this.StateText.Text = theReader.GetString(6);
                        this.ZipText.Text = theReader.GetString(7);
                        this.EmailText.Text = theReader.GetString(8);
                        this.PhoneText.Text = theReader.GetString(9);
                        this.EContact.Text = theReader.GetString(10);
                        this.EPhone.Text = theReader.GetString(11);
                        this.EmpText.Text = theReader.GetString(12);
                        this.EmpPhoneText.Text = theReader.GetString(13);
                        this.GenderText.Text = theReader.GetString(14);
                        this.PassText.Text = theReader.GetString(15);
                        this.MemberType.Text = theReader.GetString(16);
                        this.MemLength.Text = theReader.GetByte(17).ToString();

                    }
                    theReader.Close();


                    SqlCommand theCommand2 = new SqlCommand("Select LOCKER_NUM, LOCKER_TYPE, RENTAL_SEMESTER, EXPIRATION_DATE FROM LOCKER WHERE SRC_ID = @SRCID", connection);
                    theCommand2.Parameters.AddWithValue("@SRCID", Label1.Text);
                    theCommand2.CommandType = CommandType.Text;
                    SqlDataReader theReader2 = theCommand2.ExecuteReader();

                    if (theReader2.Read())
                    {
                        this.LockNum.Text = theReader2.GetString(0);
                        this.LockerType.Text = theReader2.GetString(1);
                        this.RentalSemester.Text = theReader2.GetString(2);
                        this.ExpirationLock.Text = theReader2.GetString(3);


                    }
                    connection.Close();


                }

            }


        }

        protected void Edit_Click(object sender, EventArgs e)
        {
            PassText.Enabled = true;
            FNameText.Enabled = true;
            LNameText.Enabled = true;
            GenderText.Enabled = true;
            GradText.Enabled = true;
            AddressText.Enabled = true;
            CityText.Enabled = true;
            StateText.Enabled = true;
            ZipText.Enabled = true;
            EmailText.Enabled = true;
            PhoneText.Enabled = true;
            EContact.Enabled = true;
            EPhone.Enabled = true;
            EmpText.Enabled = true;
            EmpPhoneText.Enabled = true;

            Edit.Visible = false;
            CancelBtn.Visible = true;
            UpdateBtn.Visible = true;



        }

        protected void CancelBtn_Click(object sender, EventArgs e)
        {
            PassText.Enabled = false;
            FNameText.Enabled = false;
            LNameText.Enabled = false;
            GenderText.Enabled = false;
            GradText.Enabled = false;
            AddressText.Enabled = false;
            CityText.Enabled = false;
            StateText.Enabled = false;
            ZipText.Enabled = false;
            EmailText.Enabled = false;
            PhoneText.Enabled = false;
            EContact.Enabled = false;
            EPhone.Enabled = false;
            EmpText.Enabled = false;
            EmpPhoneText.Enabled = false;

            Edit.Visible = true;
            CancelBtn.Visible = false;
            UpdateBtn.Visible = false;

            Label1.Text = Session["Name"].ToString();
            TextBox1.Text = Session["Name"].ToString();

            using (SqlConnection connection = new SqlConnection(@"Data Source=sql5047.site4now.net;Persist Security Info=True;User ID=DB_A5A727_connect4admin_admin;Password=bl1tzcr4nk;"))
            {
                SqlCommand theCommand = new SqlCommand("Select FIRST_NAME , LAST_NAME, GRADUATION_DATE, MEMBER_DOB, MAILING_ADDRESS, CITY, STATE, ZIP_CODE, EMAIL, PHONE, EMERGENCY_CONTACT_NAME, EMERGENCY_CONTACT_PHONE, PLACE_OF_EMPLOYMENT, EMPLOYMENT_PHONE, GENDER, MEMBER_PASSWORD, MEMBERSHIP_TYPE, MEMBERSHIP_LENGTH FROM  MEMBER WHERE SRC_ID = @SRCID", connection);
                connection.Open();
                theCommand.Parameters.AddWithValue("@SRCID", Label1.Text);
                theCommand.CommandType = CommandType.Text;


                SqlDataReader theReader = theCommand.ExecuteReader();

                if (theReader.Read())
                {
                    this.FNameText.Text = theReader.GetString(0);
                    this.LNameText.Text = theReader.GetString(1);
                    this.GradText.Text = theReader.GetString(2);
                    this.DOBText.Text = theReader.GetString(3);
                    this.AddressText.Text = theReader.GetString(4);
                    this.CityText.Text = theReader.GetString(5);
                    this.StateText.Text = theReader.GetString(6);
                    this.ZipText.Text = theReader.GetString(7);
                    this.EmailText.Text = theReader.GetString(8);
                    this.PhoneText.Text = theReader.GetString(9);
                    this.EContact.Text = theReader.GetString(10);
                    this.EPhone.Text = theReader.GetString(11);
                    this.EmpText.Text = theReader.GetString(12);
                    this.EmpPhoneText.Text = theReader.GetString(13);
                    this.GenderText.Text = theReader.GetString(14);
                    this.PassText.Text = theReader.GetString(15);
                    this.MemberType.Text = theReader.GetString(16);
                    this.MemLength.Text = theReader.GetByte(17).ToString();

                }
                theReader.Close();


                SqlCommand theCommand2 = new SqlCommand("Select LOCKER_NUM, LOCKER_TYPE, RENTAL_SEMESTER, EXPIRATION_DATE FROM LOCKER WHERE SRC_ID = @SRCID", connection);
                theCommand2.Parameters.AddWithValue("@SRCID", Label1.Text);
                theCommand2.CommandType = CommandType.Text;
                SqlDataReader theReader2 = theCommand2.ExecuteReader();

                if (theReader2.Read())
                {
                    this.LockNum.Text = theReader2.GetString(0);
                    this.LockerType.Text = theReader2.GetString(1);
                    this.RentalSemester.Text = theReader2.GetString(2);
                    this.ExpirationLock.Text = theReader2.GetString(3);


                }
                connection.Close();
                
            }

        }

        protected void UpdateBtn_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(@"Data Source=sql5047.site4now.net;Persist Security Info=True;User ID=DB_A5A727_connect4admin_admin;Password=bl1tzcr4nk;"))
            {
                SqlCommand cmd = new SqlCommand("UPDATE MEMBER SET FIRST_NAME = @FNAME , LAST_NAME = @LNAME , GRADUATION_DATE = @GDATE , MAILING_ADDRESS = @ADDR, CITY = @CITY, STATE = @STATE, ZIP_CODE = @ZIP, EMAIL = @EMAIL, PHONE = @PHONE, EMERGENCY_CONTACT_NAME = @ENAME, EMERGENCY_CONTACT_PHONE = @EPHONE, PLACE_OF_EMPLOYMENT = @EMP, EMPLOYMENT_PHONE = @EMPPHONE, GENDER = @GENDER, MEMBER_PASSWORD = @PASSWORD WHERE SRC_ID = @SRCID");
                cmd.Parameters.AddWithValue("@SRCID", TextBox1.Text);
                cmd.Parameters.AddWithValue("@FNAME", FNameText.Text);
                cmd.Parameters.AddWithValue("@LNAME", LNameText.Text);
                cmd.Parameters.AddWithValue("@GDATE", GradText.Text);
                cmd.Parameters.AddWithValue("@ADDR", AddressText.Text);
                cmd.Parameters.AddWithValue("@CITY", CityText.Text);
                cmd.Parameters.AddWithValue("@STATE", StateText.Text);
                cmd.Parameters.AddWithValue("@ZIP", ZipText.Text);
                cmd.Parameters.AddWithValue("@EMAIL", EmailText.Text);
                cmd.Parameters.AddWithValue("@PHONE", PhoneText.Text);
                cmd.Parameters.AddWithValue("@ENAME", EContact.Text);
                cmd.Parameters.AddWithValue("@EPHONE", EPhone.Text);
                cmd.Parameters.AddWithValue("@EMP", EmpText.Text);
                cmd.Parameters.AddWithValue("@EMPPHONE", EmpPhoneText.Text);
                cmd.Parameters.AddWithValue("@GENDER", GenderText.Text);
                cmd.Parameters.AddWithValue("@PASSWORD", PassText.Text);

                cmd.Connection = connection;

                connection.Open();

                cmd.ExecuteNonQuery();

                connection.Close();
                PassText.Enabled = false;
                FNameText.Enabled = false;
                LNameText.Enabled = false;
                GenderText.Enabled = false;
                GradText.Enabled = false;
                AddressText.Enabled = false;
                CityText.Enabled = false;
                StateText.Enabled = false;
                ZipText.Enabled = false;
                EmailText.Enabled = false;
                PhoneText.Enabled = false;
                EContact.Enabled = false;
                EPhone.Enabled = false;
                EmpText.Enabled = false;
                EmpPhoneText.Enabled = false;
                Edit.Visible = true;
                CancelBtn.Visible = false;
                UpdateBtn.Visible = false;

            }
        }

        protected void RenewBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("LockerRegistration.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("MembershipRenew.aspx");
        }
    }
}