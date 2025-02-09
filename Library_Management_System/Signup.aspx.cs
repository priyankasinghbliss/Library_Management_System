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
    public partial class Signup : System.Web.UI.Page
    {
        DBConnect dbcon = new DBConnect();
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Autogenerate();
            }
        }

        protected void btnsignup_Click(object sender, EventArgs e)
        {
            if(checkDuplicateMemberExist())
            {
                Response.Write("<script>alert('Member already exist with this ID and email');</script>");
            }
            else
            {
                createAccount();
            }
        }

        private void createAccount()
        {
            cmd = new SqlCommand("sp_CreateAccount", dbcon.GetCon());
            cmd.Parameters.AddWithValue("@full_name", txtfullname.Text);
            cmd.Parameters.AddWithValue("@dob", txtdob.Text);
            cmd.Parameters.AddWithValue("@contact_no", txtcontact.Text);
            cmd.Parameters.AddWithValue("@email", txtemail.Text);
            cmd.Parameters.AddWithValue("@state", ddlstate.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@city", txtcity.Text);
            cmd.Parameters.AddWithValue("@pincode", txtpincode.Text);
            cmd.Parameters.AddWithValue("@full_address", txtaddress.Text);
            cmd.Parameters.AddWithValue("@member_id", txtuserid.Text);
            cmd.Parameters.AddWithValue("@password", txtpassword.Text);
            cmd.Parameters.AddWithValue("@account_status", "pending");
            dbcon.OpenCon();
            cmd.CommandType = CommandType.StoredProcedure;
            if(cmd.ExecuteNonQuery()==1)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Success','Account created successfully.','Success')", true);
                //Response.Write("<script>alert('Account created successfully.');</script>");
                clrcontrol();
                Autogenerate();
            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Error','Error! Try again.','Error')", true);
                //Response.Write("<script>alert('Error! Try again.');</script>");
            }
        }

        protected bool checkDuplicateMemberExist()
        {
            cmd = new SqlCommand("sp_CheckDuplicateMember", dbcon.GetCon());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@member_id",txtuserid.Text.Trim());
            cmd.Parameters.AddWithValue("@email",txtemail.Text.Trim());
            dbcon.OpenCon();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if(dt.Rows.Count>=1)
            {
                return true;
            }
            else
            {
                return false;
            }
            //dbcon.CloseCon();
        }

        public void Autogenerate()
        {
            try
            {
                int r;
                dbcon.OpenCon();
                cmd = new SqlCommand("select max(member_id) as Member_ID from member_master_tbl", dbcon.GetCon());
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    string d = dr[0].ToString();
                    if (d == "")
                    {
                        txtuserid.Text = "1001";
                    }
                    else
                    {
                        r = Convert.ToInt32(dr[0].ToString());
                        r = r + 1;
                        txtuserid.Text = r.ToString();
                    }
                    txtuserid.ReadOnly = true;
                }
                dbcon.CloseCon();
            }
            catch(Exception ex)
            {
                Response.Redirect("<script>alert(" + ex.Message + ")</script>");
            }
        }

        private void clrcontrol()
        {
            txtfullname.Text = txtdob.Text = txtcontact.Text = txtemail.Text = txtcity.Text = txtpincode.Text = txtaddress.Text = txtuserid.Text = txtpassword.Text = string.Empty;
            ddlstate.SelectedIndex = 0;
            //ddlstate.SelectedItem.Text = "Select";
            txtfullname.Focus();
        }
    }
}