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
    
    public partial class WebForm1 : System.Web.UI.Page
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
            cmd.CommandText = "select * from student";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            sTable.DataSource = dt;
            sTable.DataBind();


        }
        protected void sSubmit_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Insert into student values('" + sName.Text + "','" + sFName.Text + "','" + sCNIC.Text + "','" + sPhoneNo.Text + "','"+sEmail.Text+"','"+sDegree.Text+"')";
            cmd.ExecuteNonQuery();
            sName.Text = "";
            sFName.Text = "";
            sCNIC.Text = "";
            sPhoneNo.Text = "";
            sEmail.Text = "";
            sDegree.Text = "";
            disp_data();
        }

        protected void sDelete_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "delete from student where CNIC = '" + sCNIC.Text + "'";
            cmd.ExecuteNonQuery();
            disp_data();
        }

        protected void sUpdate_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update  student SET [Student Name] = '" + sName.Text + "', [Father Name] = '" + sFName.Text + "',CNIC = '" + sCNIC.Text + "', Phone ='"+ sPhoneNo.Text+"', Email = '"+ sEmail.Text+"', Degree = '"+sDegree+"'     where CNIC = '" + sCNIC.Text + "' ";
            cmd.ExecuteNonQuery();
            sName.Text = "";
            sFName.Text = "";
            sCNIC.Text = "";
            sPhoneNo.Text = "";
            sEmail.Text = "";
            sDegree.Text = "";
            disp_data();
        }
    }
}