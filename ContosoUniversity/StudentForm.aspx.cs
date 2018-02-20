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
    public partial class StudentForm : System.Web.UI.Page
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

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            //sda.Fill(ds, "Person");
            if (true)
            {
                //if (ds.Tables[0].Rows == cmd.)
                //Label1.Text = "Successfully Login!";
                Response.Redirect(url: "SingleStudentForm.aspx");

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string FirstName = txtFirst.Text;
            string LastName = txtLast.Text;
            string Filter = "";

            if (FirstName != "" && LastName == "")
            {
                Filter = Filter + "FName like '%" + FirstName;
            }
            if(FirstName == "" && LastName != "")
            {
                Filter = Filter + "LName like '%" + LastName;
            }
            else
            {
                Filter = Filter + "FName like '%" + FirstName + "%'";
                Filter = Filter + "LName like '%" + LastName + "%'";
            }

            if (Filter.Length > 0)
            {
                string FinalFilter = Filter.Remove(Filter.Length - 4, 3);
                SqlDataSource.FilterExpression = FinalFilter;
            }
            else
            {
                GridView1.DataBind();
            }
        }
    }
}