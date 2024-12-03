using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;


namespace LoginAndRegFinal
{
    public partial class Login : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
 
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void TxtUsername_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TxtPassword_TextChanged(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            string username = TxtUsername.Text;
            string password = TxtPassword.Text;

            using (SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["UserDB"].ConnectionString))
            {
                string query = "SELECT PasswordHash FROM UsersData WHERE Username = @Username";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Username", username);
                con.Open();

                string storedHash = cmd.ExecuteScalar()?.ToString();
                con.Close();

                if (storedHash != null && FormsAuthentication.HashPasswordForStoringInConfigFile(password, "SHA1") == storedHash)
                {
                    Session["Username"] = username;
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    LblError.Text = "Invalid username or password!";
                }
            }
        }

        protected void BtnSignup_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }
    }
}