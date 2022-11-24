using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;

namespace MyAspAPP
{
    public partial class AddEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string cnn = "Data Source=DESKTOP-5VL94R9;Initial Catalog=prodb;Integrated Security=True";
            SqlConnection connection = new SqlConnection(cnn);
            // SqlCommand cmd = new SqlCommand("select * from employee",connection);
            SqlCommand cmd = new SqlCommand("sp_insert_employee", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@name",txtName.Text);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@gender",ddlGender.Text);
            cmd.Parameters.AddWithValue("@salary", txtSalary.Text);

            if (connection.State == ConnectionState.Closed)
            {
                connection.Open();
            }
            int i = cmd.ExecuteNonQuery();
            if(i>0)
            {
                lblMessage.Text = "Employees added successfully";
                lblMessage.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                lblMessage.Text = "ID already exist ";
                lblMessage.ForeColor = System.Drawing.Color.Red;

            }
            connection.Close();
        }
    }
}