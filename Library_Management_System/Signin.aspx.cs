using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Library_Management_System
{
    public partial class Login : System.Web.UI.Page
    {
        DBConnect dbcon = new DBConnect();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        /// <summary>
        /// For User Login
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnsignin_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("sp_UserLogin", dbcon.GetCon());
            dbcon.OpenCon();
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@member_id", txtuserid.Text);
            cmd.Parameters.AddWithValue("@password", txtpassword.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Response.Write("<script> alert ('Login Successfully');</script>");
                    Session["role"] = "user";
                    Session["fullname"] = dr.GetValue(0).ToString();
                    Session["username"] = dr.GetValue(1).ToString();
                    Session["status"] = dr.GetValue(3).ToString();
                }
                Response.Redirect("~/UserDashboard/UserHome.aspx");
            }
            else
            {
                Response.Write("<script> alert ('Invalid credentials...try again');</script>");
            }
            //dbcon.CloseCon();
        }

        /// <summary>
        /// For Admin Login
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnAdminLogin_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("sp_AdminLogin", dbcon.GetCon());
            dbcon.OpenCon();
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@username", txtadminid.Text.Trim());
            cmd.Parameters.AddWithValue("@password", txtadminpassword.Text.Trim());
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Response.Write("<script> alert ('Login Successfully');</script>");
                    Session["Adminrole"] = "Admin";
                    Session["Adminusername"] = dr.GetValue(0).ToString();
                    Session["Adminfullname"] = dr.GetValue(2).ToString();
                }
                Response.Redirect("~/Admin/AdminHome.aspx");
            }
            else
            {
                Response.Write("<script> alert ('Invalid credentials...try again');</script>");
            }
            //dbcon.CloseCon();
        }
    }
}
