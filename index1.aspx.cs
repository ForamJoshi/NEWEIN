using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class index1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            UpdateCaptchaText();
        }
    }
    protected void btnSubmitCaptcha_Click(object sender, EventArgs e)
    {
        bool success = false;
        if (Session["Captcha"] != null)
        {
            //Match captcha text entered by user and the one stored in session
            if (Convert.ToString(Session["Captcha"]) == txtCaptchaText.Text.Trim())
            {
                success = true;
            }
        }

        lblStatus.Visible = true;
        if (success)
        {
            SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Foram Joshi\Documents\newein.mdf;Integrated Security=True;Connect Timeout=30");
            SqlDataAdapter da = new SqlDataAdapter("select * from user_registration", cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "user_registration");
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                string b = ds.Tables[0].Rows[i].ItemArray.GetValue(4).ToString();
                lblStatus.Text = b;
                lblStatus.ForeColor = System.Drawing.Color.Green;
            }
            //SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Foram Joshi\Documents\newein.mdf;Integrated Security=True;Connect Timeout=30");
            //SqlCommand cmd = new SqlCommand();
            //cmd.Connection = cn;
            //cmd.Parameters.AddWithValue("@email", txt1.Text);
            //cmd.CommandText = "select pass from user_registration where email=@email";
            //cn.Open();
            //cmd.ExecuteNonQuery();
            //cn.Close();
        }
        else
        {
            lblStatus.Text = "Ooops..Sorry!!Please try again";
            lblStatus.ForeColor = System.Drawing.Color.Red;
        }
    }

    protected void btnReGenerate_Click(object sender, EventArgs e)
    {
        UpdateCaptchaText();
    }

    private void UpdateCaptchaText()
    {
        txtCaptchaText.Text = string.Empty;
        lblStatus.Visible = false;
        //Store the captcha text in session to validate
        Session["Captcha"] = Guid.NewGuid().ToString().Substring(0, 6);
    }


}