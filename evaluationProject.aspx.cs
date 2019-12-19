using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.Data.SqlClient;

namespace Project_Manager
{
    public partial class evaluationProject : System.Web.UI.Page
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
            disp_data1();
        }
        public void disp_data()
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;            
            cmd.CommandText = "select * from assign_project where Project in (select (projectName) From evaluationProject)";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            evaluationTable.DataSource = dt;
            evaluationTable.DataBind();


        }
        public void disp_data1()
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;

            cmd.CommandText = "select * from evaluationProject";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            evaluationNumberGrid.DataSource = dt;
            evaluationNumberGrid.DataBind();


        }
        public void pdfConvertor(GridView g)
        {
            PdfPTable pdfTable = new PdfPTable(g.HeaderRow.Cells.Count);

            foreach (TableCell hc in g.HeaderRow.Cells)
            {
                Font font = new Font();
                font.Color = new BaseColor(g.HeaderStyle.ForeColor);
                PdfPCell pc = new PdfPCell(new Phrase(hc.Text, font));
                pc.BackgroundColor = new BaseColor(g.HeaderStyle.BackColor);
                pdfTable.AddCell(pc);
            }

            foreach (GridViewRow gdr in g.Rows)
            {
                foreach (TableCell tc in gdr.Cells)
                {
                    Font font = new Font();
                    font.Color = new BaseColor(g.RowStyle.ForeColor);
                    PdfPCell pc = new PdfPCell(new Phrase(tc.Text));
                    pc.BackgroundColor = new BaseColor(g.RowStyle.BackColor);
                    pdfTable.AddCell(pc);
                }
            }
            Document pdfDocument = new Document(PageSize.A4, 10f, 10f, 10f, 10f);
            PdfWriter.GetInstance(pdfDocument, Response.OutputStream);
            pdfDocument.Open();
            pdfDocument.Add(pdfTable);
            pdfDocument.Close();
            Response.ContentType = "application/pdf";
            Response.AppendHeader("content-disposition", "attachment;FileName=Marks.pdf");
            Response.Write(pdfDocument);
            Response.Flush();
            Response.End();
        }
        
        protected void evaluateSubmit_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Insert into evaluationProject values('" + DropDownList1.SelectedValue + "','" + evaluationBox.Text + "')";
            cmd.ExecuteNonQuery();


            DropDownList1.ClearSelection();
            evaluationBox.Text = "";
            
            disp_data1();

            PdfPTable pdfTable = new PdfPTable(evaluationNumberGrid.HeaderRow.Cells.Count);
            
            foreach (TableCell hc in evaluationNumberGrid.HeaderRow.Cells)
            {
                PdfPCell pc = new PdfPCell(new Phrase(hc.Text));
                pdfTable.AddCell(pc);
            }
            
            foreach (GridViewRow gdr in evaluationNumberGrid.Rows)
            {
                foreach(TableCell tc in gdr.Cells)
                {
                    PdfPCell pc = new PdfPCell(new Phrase(tc.Text));
                    
                    pdfTable.AddCell(pc);
                }
            }
            Document pdfDocument = new Document(PageSize.A4, 10f, 10f, 10f, 10f);
            PdfWriter.GetInstance(pdfDocument, Response.OutputStream);
            pdfDocument.Open();
            pdfDocument.Add(pdfTable);
            pdfDocument.Close();


            Response.ContentType = "application/pdf";
            Response.AppendHeader("content-disposition", "attachment;FileName=Marks.pdf");
            Response.Write(pdfDocument);
            Response.Flush();
            Response.End();
            disp_data();
        }

        
    }
}