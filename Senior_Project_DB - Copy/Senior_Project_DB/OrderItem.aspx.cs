using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.DynamicData;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Senior_Project_DB
{
    public partial class OrderItem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            //adds Desktop Computer to cart...
            if (IsValid)
            {//pass the validation already
                var parameter = SqlDataSource1.InsertParameters;//a reference to the insert parameters
                parameter["Id"].DefaultValue = ("1");
                parameter["Item_Name"].DefaultValue = ("Desktop Computer");
                parameter["Item_Quantity"].DefaultValue = ("1");
                parameter["Item_Price"].DefaultValue = ("1500");
                parameter["Item_Id"].DefaultValue = ("1");

                try
                {
                    SqlDataSource1.Insert();
                    //reset the textboxes
                    //TextBox1.Text = "";
                    //TextBox2.Text = "";
                    //TextBox3.Text = "";
                    //TextBox4.Text = "";
                    //TextBox5.Text = "";
                }
                catch (Exception ex)
                {
                    //Error.Text = ex.Message;
                    //Error.Visible = true;
                }
            }
        }
        protected void Button6_Click(object sender, EventArgs e)
        {
            //adds Computer Mouse to cart...
            if (IsValid)
            {//pass the validation already
                var parameter = SqlDataSource1.InsertParameters;//a reference to the insert parameters
                parameter["Id"].DefaultValue = ("2");
                parameter["Item_Name"].DefaultValue = ("Computer Mouse");
                parameter["Item_Quantity"].DefaultValue = ("1");
                parameter["Item_Price"].DefaultValue = ("40");
                parameter["Item_Id"].DefaultValue = ("3");

                try
                {
                    SqlDataSource1.Insert();
                    //reset the textboxes
                    //TextBox1.Text = "";
                    //TextBox2.Text = "";
                    //TextBox3.Text = "";
                    //TextBox4.Text = "";
                    //TextBox5.Text = "";
                }
                catch (Exception ex)
                {
                    //Error.Text = ex.Message;
                    //Error.Visible = true;
                }
            }
        }
        protected void Button7_Click(object sender, EventArgs e)
        {
            //adds Mousepad to cart...
            if (IsValid)
            {//pass the validation already
                var parameter = SqlDataSource1.InsertParameters;//a reference to the insert parameters
                parameter["Id"].DefaultValue = ("3");
                parameter["Item_Name"].DefaultValue = ("Mousepad");
                parameter["Item_Quantity"].DefaultValue = ("1");
                parameter["Item_Price"].DefaultValue = ("15");
                parameter["Item_Id"].DefaultValue = ("4");

                try
                {
                    SqlDataSource1.Insert();
                    //reset the textboxes
                    //TextBox1.Text = "";
                    //TextBox2.Text = "";
                    //TextBox3.Text = "";
                    //TextBox4.Text = "";
                    //TextBox5.Text = "";
                }
                catch (Exception ex)
                {
                    //Error.Text = ex.Message;
                    //Error.Visible = true;
                }
            }
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            //adds Desktop Computer to cart...
            if (IsValid)
            {//pass the validation already
                var parameter = SqlDataSource2.InsertParameters;//a reference to the insert parameters
                //var parameter2 = SqlDataSource2.UpdateParameters;
                parameter["Id"].DefaultValue = ("3");
                parameter["Item_Name"].DefaultValue = ("Mousepad");
                parameter["Item_Quantity"].DefaultValue = ("1");
                parameter["Item_Price"].DefaultValue = ("15");
                parameter["Item_Id"].DefaultValue = ("4");

                try
                {
                    SqlDataSource1.Insert();
                    //reset the textboxes
                    //TextBox1.Text = "";
                    //TextBox2.Text = "";
                    //TextBox3.Text = "";
                    //TextBox4.Text = "";
                    //TextBox5.Text = "";
                }
                catch (Exception ex)
                {
                    //Error.Text = ex.Message;
                    //Error.Visible = true;
                }
            }
        }
    }
}