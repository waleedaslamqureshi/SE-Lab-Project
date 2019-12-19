using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace Project_Manager
{
    public partial class Advisor : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-57SKVS2\SQLEXPRESS;Initial Catalog=Project_Final;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
            disp_data();
        }
        public void disp_data()
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from advisor";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            advisorTable.DataSource = dt;
            advisorTable.DataBind();


        }
        protected void aSubmit_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Insert into advisor values('" + aName.Text + "','" + aDepartment.Text + "','" + aCNIC.Text + "','" + aEmail.Text + "')";
            cmd.ExecuteNonQuery();
            aName.Text = "";
            aDepartment.Text = "";
            aCNIC.Text = "";
            aEmail.Text = "";
            disp_data();
        }

        protected void aDelete_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "delete from advisor where CNIC = '" + aCNIC.Text + "'";
            cmd.ExecuteNonQuery();
            disp_data();
        }

        protected void aUpdate_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update  advisor SET Name = '" + aName.Text + "', Department = '" + aDepartment.Text + "',CNIC = '" + aCNIC.Text + "',Email = '" + aEmail.Text + "',     where CNIC = '" + aCNIC.Text + "' ";
            cmd.ExecuteNonQuery();
            aName.Text = "";
            aDepartment.Text = "";
            aCNIC.Text = "";
            aEmail.Text = "";
            disp_data();
        }
    }
}