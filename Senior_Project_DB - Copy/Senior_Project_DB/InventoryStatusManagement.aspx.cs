using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Senior_Project_DB
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed9_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {//pass the validation already
                var parameter = SqlDataSource1.InsertParameters;//a reference to the insert parameters
                parameter["Item_Name"].DefaultValue = TextBox1.Text;
                parameter["Item_Quantity"].DefaultValue = TextBox2.Text;
                parameter["Item_Price"].DefaultValue = TextBox3.Text;
                parameter["Item_Location"].DefaultValue = TextBox4.Text;
                parameter["Item_Id"].DefaultValue= TextBox5.Text;

                try
                {
                    SqlDataSource1.Insert();
                    //reset the textboxes
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                    TextBox5.Text = "";
                }
                catch (Exception ex)
                {
                    Error.Text = ex.Message;
                    Error.Visible = true;
                }
            }
        }
    }
}