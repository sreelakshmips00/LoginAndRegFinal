using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginAndRegFinal
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
                Response.Redirect("Login.aspx");

            LblUsername.Text = Session["Username"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void BtnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}