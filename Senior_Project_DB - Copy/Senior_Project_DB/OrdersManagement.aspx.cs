using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Senior_Project_DB
{
    public partial class OrdersManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {//pass the validation already
                var parameter = SqlDataSource2.InsertParameters;//a reference to the insert parameters
                parameter["Orders_Id"].DefaultValue = TextBox1.Text;
                parameter["Customer_First_Name"].DefaultValue = TextBox2.Text;
                parameter["Customer_Last_Name"].DefaultValue = TextBox3.Text;
                parameter["Address (Street, City, State, Zip)"].DefaultValue = TextBox4.Text;
                parameter["Item_Quantity"].DefaultValue = TextBox5.Text;
                parameter["Item_Id"].DefaultValue = TextBox6.Text;
                parameter["Item_Name"].DefaultValue = TextBox7.Text;
                parameter["Item_Price"].DefaultValue = TextBox8.Text;

                try
                {
                    SqlDataSource2.Insert();
                    //reset the textboxes
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                    TextBox5.Text = "";
                    TextBox6.Text = "";
                    TextBox7.Text = "";
                    TextBox8.Text = "";
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