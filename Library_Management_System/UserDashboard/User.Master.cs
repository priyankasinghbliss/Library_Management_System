using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Management_System.UserDashboard
{
    public partial class User : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty((string)Session["role"]) && Session["role"].Equals("user"))
            {
                if (!IsPostBack)
                {
                    lblUserName.Text ="Hi," + Session["fullname"].ToString();
                }
            }
            else
            {
                Response.Redirect("../default.aspx");
            }
        }
    }
}