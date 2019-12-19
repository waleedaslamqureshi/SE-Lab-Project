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
    public partial class assignProject : System.Web.UI.Page
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
            cmd.CommandText = "select * from assign_project";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            assignTable.DataSource = dt;
            assignTable.DataBind();
        }
        protected void assignProjectBtn_Click(object sender, EventArgs e)
        {
            string studentCheckBoxSelected = "";
            string advisorCheckBoxSelected = "";
            string projectCheckBoxSelected = "";
            for (int i=0;i<studentCheckList.Items.Count;i++)
            {
                if(studentCheckList.Items[i].Selected)
                {
                    if(studentCheckBoxSelected == "")
                    {
                        studentCheckBoxSelected = studentCheckList.Items[i].Text;
                    }
                    else
                    {
                        studentCheckBoxSelected += "," + studentCheckList.Items[i].Text;
                    }
                }
            }
            for (int i = 0; i < advisorCheckList.Items.Count; i++)
            {
                if (advisorCheckList.Items[i].Selected)
                {
                    if (advisorCheckBoxSelected == "")
                    {
                        advisorCheckBoxSelected = advisorCheckList.Items[i].Text;
                    }
                    else
                    {
                        advisorCheckBoxSelected += "," + advisorCheckList.Items[i].Text;
                    }
                }
            }
            for (int i = 0; i < projectRadioBtn.Items.Count; i++)
            {
                if (projectRadioBtn.Items[i].Selected)
                {
                     projectCheckBoxSelected = projectRadioBtn.Items[i].Text;
                }
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Insert into assign_project values('" + studentCheckBoxSelected + "','" + advisorCheckBoxSelected + "','" + projectCheckBoxSelected + "')";
            cmd.ExecuteNonQuery();
            studentCheckList.ClearSelection();
            advisorCheckList.ClearSelection();
            projectRadioBtn.ClearSelection();
            disp_data();
        }
    }
}