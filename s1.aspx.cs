using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class s1 : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "welcome" + Session["uname"];
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string a = DropDownList1.SelectedValue;
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Foram Joshi\Documents\newein.mdf;Integrated Security=True;Connect Timeout=30");
        SqlDataAdapter da = new SqlDataAdapter("select * from city where state_id like" + DropDownList1 + "'%", cn);
        DataSet ds = new DataSet();
        da.Fill(ds, "city");
        DropDownList1.DataBind();
        
        for (int i = 0; i < ds.Tables["city"].Rows.Count; i++)
        {
            //string c = ds.Tables["city"].Rows[i].ItemArray.GetValue(3).ToString();
            //string b = ds.Tables["city"].Rows[i].ItemArray.GetValue(4).ToString();

        }
    }
}