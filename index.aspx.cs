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

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Foram Joshi\Documents\newein.mdf;Integrated Security=True;Connect Timeout=30");
        SqlDataAdapter da = new SqlDataAdapter("select * from user_registration",cn);
        DataSet ds = new DataSet();
        da.Fill(ds, "user_registration");
        for(int i=0;i<ds.Tables[0].Rows.Count;i++)
        {
          string c = ds.Tables[0].Rows[i].ItemArray.GetValue(1).ToString();
          string a =  ds.Tables[0].Rows[i].ItemArray.GetValue(3).ToString();
          string b = ds.Tables[0].Rows[i].ItemArray.GetValue(4).ToString();
          if (TextBox1.Text == a && TextBox2.Text == b)
          {
              
              Session["fname"] = c;
              Response.Redirect("home.aspx");
          }
          else
          {
              string f = "you are not registered user";
              Label1.Text = f;
          }
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string s = DropDownList1.SelectedValue + "/" + DropDownList2.SelectedValue + "/" + DropDownList3.SelectedValue;
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Foram Joshi\Documents\newein.mdf;Integrated Security=True;Connect Timeout=30");
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.Parameters.AddWithValue("@fname", TextBox3.Text);
        cmd.Parameters.AddWithValue("@lname", TextBox4.Text);
        cmd.Parameters.AddWithValue("@email", TextBox5.Text);
        cmd.Parameters.AddWithValue("@pass", TextBox6.Text);
        cmd.Parameters.AddWithValue("@date", s);
        cmd.Parameters.AddWithValue("@sex", RadioButtonList1.SelectedValue);
        cmd.CommandText = "insert into user_registration values(@fname,@lname,@email,@pass,@date,@sex)";
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
      
        Response.Redirect("index.aspx");
        string m = "you are successfully registered...";
        Label3.Text = m;

    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
