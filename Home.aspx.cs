using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelManagementSystem
{
    public partial class Default : System.Web.UI.Page
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

            cmd.Parameters.AddWithValue("@u", txtLoginUsername.Text);
            cmd.Parameters.AddWithValue("@p", txtLoginPassword.Text);

            int count = (int)cmd.ExecuteScalar();
            con.Close();

            if (count == 1)
                Response.Redirect("Home.aspx");
            else
                lblLoginMsg.Text = "Invalid Username or Password";
        }
        


        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["HotelDB.mdf"].ConnectionString;

            using (SqlConnection con1 = new SqlConnection(cs))
            {
                SqlConnection con = new SqlConnection(
                @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\HotelDB.mdf;Integrated Security=True");

                con.Open();

                SqlCommand cmd = new SqlCommand(
                    "INSERT INTO Users (Name,Username,Password,Mobile) VALUES (@n,@u,@p,@m)", con);

                cmd.Parameters.AddWithValue("@n", txtName.Text);
                cmd.Parameters.AddWithValue("@u", txtRegUsername.Text);
                cmd.Parameters.AddWithValue("@p", txtRegPassword.Text);
                cmd.Parameters.AddWithValue("@m", txtMobile.Text);

                cmd.ExecuteNonQuery();
                con.Close();

                lblRegMsg.Text = "Registration Successful!";
            }
        }


    }
}