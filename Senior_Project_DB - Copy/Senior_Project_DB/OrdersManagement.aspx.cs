using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using Senior_Project_DB.Models;

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

        protected void TextBox8_TextChanged(object sender, EventArgs e)
        {

        }

        //protected void Button5_Click(object sender, EventArgs e)
        //{
        //    Order order = createOrder();


        //    //var Parameter = this.SqlDataSource2.InsertParameters;
        //    //Parameter[order.Id].DefaultValue = TextBox1.Text;
        //    //Parameter["Customer_First_Name"].DefaultValue = TextBox2.Text;
        //    //Parameter["Customer_Last_Name"].DefaultValue = TextBox3.Text;
        //    //Parameter["Address (Street, City, State, Zip)"].DefaultValue = TextBox4.Text;
        //    //Parameter["Item_Quantity"].DefaultValue = TextBox5.Text;
        //    //Parameter["Item_Id"].DefaultValue = TextBox6.Text;
        //    //Parameter["Item_Name"].DefaultValue = TextBox7.Text;
        //    //Parameter["Item_Price"].DefaultValue = TextBox8.Text;

        //    try
        //    {
        //        //this.SqlDataSource2.Insert();//insert the new record to the db.
        //        Models.OrderDB.Insert(order);
        //        //GridView1.DataBind(); 
        //        ResetControls();
        //    }
        //    catch (Exception ex)
        //    {
        //        Console.WriteLine(ex.Message);
        //    }
        //}

        ////private Order createOrder()
        //{
        //    //Order order = new Order();
        //    //order.Id = Convert.ToInt32(TextBox1.Text);
        //    //order.FirstName = TextBox2.Text;
        //    //order.LastName = TextBox3.Text;
        //    //order.Address = TextBox4.Text;
        //    //order.Item_Quantity = TextBox5.Text;
        //    //order.Item_Id = TextBox6.Text;



        //    //return order;
        //}

        //private void ResetControls()
        //{
        ////    TextBox1.Text = "";
        ////    TextBox2.Text = "";
        ////    TextBox3.Text = "";
        ////    TextBox4.Text = "";
        ////    TextBox5.Text = "";
        ////    TextBox6.Text = "";
        ////}
    }
}