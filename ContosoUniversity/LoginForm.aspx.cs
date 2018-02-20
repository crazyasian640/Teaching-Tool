using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace ContosoUniversity
{
    public partial class Login : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=LAPTOP-DQJRNG7L\\SQLEXPRESS;Initial Catalog=TeachingTool;Integrated Security=True";
            con.Open();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            cmd.CommandText = "SELECT * FROM Login where Username='" + txtUsername.Text + "' and Password='" + txtPassword.Text + "'";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds, "Login");
            if (ds.Tables[0].Rows.Count > 0)
            {
                //Label1.Text = "Successfully Login!";
                Response.Redirect(url: "http://localhost:5696/");
                //Response.Redirect("StudentForm.aspx");
            }
            else
            {
                Label1.Text = "Invalid Username or Password";
            }
        }
    }
}