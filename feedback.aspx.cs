using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "Welcome, " + Session["fname"];
        TextBox1.Text = Session["fname"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Foram Joshi\Documents\newein.mdf;Integrated Security=True;Connect Timeout=30");
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.Parameters.AddWithValue("@name", TextBox1.Text);
        cmd.Parameters.AddWithValue("@email", TextBox2.Text);
        cmd.Parameters.AddWithValue("@content", TextBox3.Text);
        cmd.CommandText = "insert into feedback values(@name,@email,@content)";
        //SqlDataAdapter da = new SqlDataAdapter("select * from feedback", cn);
        //DataSet ds = new DataSet();
        //da.Fill(ds, "feedback");
        //for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        //{
        //    string c = ds.Tables[0].Rows[i].ItemArray.GetValue(0).ToString();
        //    string a = ds.Tables[0].Rows[i].ItemArray.GetValue(1).ToString();
        //    string b = ds.Tables[0].Rows[i].ItemArray.GetValue(2).ToString();
        //}
        //Response.Write(c);
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("feedback.aspx");
        
    }
}