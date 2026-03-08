using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelManagementSystem
{
    public partial class UserLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(
                @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\HotelDB.mdf;Integrated Security=True");

            con.Open();

            SqlCommand cmd = new SqlCommand(
                "SELECT COUNT(*) FROM Users WHERE Username=@u AND Password=@p", con);

            cmd.Parameters.AddWithValue("@u", txtUsername.Text);
            cmd.Parameters.AddWithValue("@p", txtPassword.Text);

            int count = (int)cmd.ExecuteScalar();
            con.Close();

            if (count == 1)
                Response.Redirect("Home.aspx");
            else
                lblMsg.Text = "Invalid Username or Password";
        }
    }
}