using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "Welcome, " + Session["fname"];
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        float a = float.Parse(txtxu.Text);
        float b = float.Parse(txta.Text);
        float c = a/b;
        txtv.Text = c.ToString();
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
         string s = DropDownList2.SelectedItem.ToString();
        if (s == "Constant Acceleration-1")
        {
            Response.Redirect("Default3.aspx");
        }
        string m = DropDownList2.SelectedItem.ToString();
        if (m == "Constant Acceleration-2")
        {
            Response.Redirect("Default.aspx");
        }
        string n = DropDownList2.SelectedItem.ToString();
        if (n == "Coulomb's Law")
        {
            Response.Redirect("Default2.aspx");
        }
        string o = DropDownList2.SelectedItem.ToString();
        if (o == "Electric Field")
        {
            Response.Redirect("Default4.aspx");
        }
        string p = DropDownList2.SelectedItem.ToString();
        if (p == "Pressure")
        {
            Response.Redirect("Default6.aspx");
        }
        string q = DropDownList2.SelectedItem.ToString();
        if (q == "Pascal's Principle")
        {
            Response.Redirect("Default5.aspx");
        }
        string f = DropDownList2.SelectedItem.ToString();
        if (f == "Ideal Gas Law")
        {
            Response.Redirect("Default7.aspx");
        }
        string a = DropDownList2.SelectedItem.ToString();
        if (a == "Combined Gas Law")
        {
            Response.Redirect("Default8.aspx");
        } string b = DropDownList2.SelectedItem.ToString();
        if (b == "Wave Velocity")
        {
            Response.Redirect("Default9.aspx");
        } string c = DropDownList2.SelectedItem.ToString();
        if (c == "Index of Refraction")
        {
            Response.Redirect("Default10.aspx");
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        txtv.Text = "";
        txtxu.Text = "";
        txta.Text = "";
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "1")
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("Constant Acceleration-1");
            DropDownList2.Items.Add("Constant Acceleration-2");
            DropDownList2.Items.Add("Constant Acceleration-3");
            DropDownList2.Items.Add("Newton's Second Law");
            DropDownList2.Items.Add("Centripetal Acceleration");
            DropDownList2.Items.Add("Torque");
            DropDownList2.Items.Add("Momentum");
            DropDownList2.Items.Add("Kinetic Energy");
            DropDownList2.Items.Add("Potential Energy");
            DropDownList2.Items.Add("Work Done");
            DropDownList2.Items.Add("Power");
            DropDownList2.Items.Add("Hooke's Law");
            DropDownList2.Items.Add("Potential Energy-Spring");
            DropDownList2.Items.Add("Period of a Spring");
            DropDownList2.Items.Add("Period of a Pendulum");

        }
        else if (DropDownList1.SelectedValue == "2")
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("Coulomb's Law");
            DropDownList2.Items.Add("Electric Field");
            DropDownList2.Items.Add("Electric Potential Energy");
            DropDownList2.Items.Add("Capacitance");
            DropDownList2.Items.Add("Potential Energy-Capacitor");
            DropDownList2.Items.Add("Resistance of a wire");
            DropDownList2.Items.Add("Ohm's Law");
            DropDownList2.Items.Add("Electric Power");
            DropDownList2.Items.Add("Total Capacitance");
            DropDownList2.Items.Add("Total Resistance");
            DropDownList2.Items.Add("Force On a Charged Particle");
            DropDownList2.Items.Add("Force on Current Carrying Wire");
            DropDownList2.Items.Add("Magnetic Field(Electric Current)");
            DropDownList2.Items.Add("Magnetic Flux");
        }
        else if (DropDownList1.SelectedValue == "3")
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("Pressure");
            DropDownList2.Items.Add("Pascal's principle");
            DropDownList2.Items.Add("Pressure Measurement");
            DropDownList2.Items.Add("Buoyant Force");
            DropDownList2.Items.Add("Continuity Equation");
        }
        else if (DropDownList1.SelectedValue == "4")
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("Ideal Gas Law");
            DropDownList2.Items.Add("Combined Gas Law");
            DropDownList2.Items.Add("Molecular Kinetic Energy");
            DropDownList2.Items.Add("Velocity(rms)");
        }
        else if (DropDownList1.SelectedValue == "5")
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("Wave Velocity");
            DropDownList2.Items.Add("Index of Refraction");
            DropDownList2.Items.Add("Snell's Law");
            DropDownList2.Items.Add("Total Internal Reflection");
            DropDownList2.Items.Add("Lens Equation");

        }
    }

}