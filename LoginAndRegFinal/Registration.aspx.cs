using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Data;
using System.Web.Security;
using System.Net.Mail;
using System.Net;


namespace LoginAndRegFinal
{
    public partial class Registration : System.Web.UI.Page
    {
    
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TxtUsername_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TxtEmail_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TxtPhoneNumber_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TxtPassword_TextChanged(object sender, EventArgs e)
        {

        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {

            string username = TxtUsername.Text;
            string email = TxtEmail.Text;
            string phone = TxtPhoneNumber.Text;
            string password = FormsAuthentication.HashPasswordForStoringInConfigFile(TxtPassword.Text, "SHA1");


            using (SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["UserDB"].ConnectionString))
            {
                string query = "INSERT INTO UsersData (Username, Email, PhoneNumber, PasswordHash) VALUES (@Username, @Email, @Phone, @PasswordHash)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Username", username);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Phone", phone);
                cmd.Parameters.AddWithValue("@PasswordHash", password);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }

            SendWelcomeEmail(email, username);
            Response.Redirect("Login.aspx");

            if (Page.IsValid)
            {
                 Response.Write("Form submitted successfully!");
            }
            else
            {
                 Response.Write("Please fix the errors and try again.");
            }
        }
        private void SendWelcomeEmail(string email, string username)
        {
            try
            {
                // Create the email
                MailMessage mail = new MailMessage
                {
                    From = new MailAddress(System.Configuration.ConfigurationManager.AppSettings["SenderEmail"]),
                    Subject = "Welcome to LoginAndRegFinal!",
                    Body = $"Hi {username},\n\nThank you for registering with us.\n\nBest regards,\nLoginAndRegFinal Team"
                };

                mail.To.Add(email);

                // Configure SMTP client
                SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587)
                {
                    Credentials = new System.Net.NetworkCredential(
                        System.Configuration.ConfigurationManager.AppSettings["SenderEmail"],
                        System.Configuration.ConfigurationManager.AppSettings["SenderPassword"]
                    ),
                    EnableSsl = true
                };

                // Send the email
                smtp.Send(mail);
            }
            catch (Exception ex)
            {
                // Display an error message
                Response.Write($"<script>alert('Error sending email: {ex.Message}');</script>");
            }
 
        }
    }
}