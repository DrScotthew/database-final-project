using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;

namespace Senior_Project_DB.Models
{
    public class OrderDB
    {//CRUD Command
        //C-INSERT
        public static void Insert(Order order)
        {
            //create the Insert command
            string sql = "INSERT INTO [Orders] (Orders_Id, Customer_First_Name, Customer_Last_Name, Address, Item_Quantity, Item_Id, Item_Name, Item_Price)" +
                " VALUES (@Orders_Id, @Customer_First_Name, @Customer_Last_Name, @Address, @Item_Quantity, @Item_Id)";
            using (SqlConnection conn = new SqlConnection(getConnectionString()))
            {
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    conn.Open();
                    //prepare the parameters
                    cmd.Parameters.AddWithValue("Orders_Id", order.Id);
                    cmd.Parameters.AddWithValue("Customer_First_Name", order.FirstName);
                    cmd.Parameters.AddWithValue("Customer_Last_Name", order.LastName);
                    cmd.Parameters.AddWithValue("Address", order.Address);
                    cmd.Parameters.AddWithValue("Item_Quantity", order.Item_Quantity);
                    cmd.Parameters.AddWithValue("Item_Id", order.Item_Id);
                    //cmd.Parameters.AddWithValue("Item_Name", order.Item_Name);
                    //cmd.Parameters.AddWithValue("Item_Price", order.Item_Price);

                    cmd.ExecuteNonQuery();
                }
            }
        }

        //R-SELECT 
        public static List<Order> GetAllUsers()
        {
            List<Order> orders = new List<Order>();//get the list object
            //create the select sql command: select every column in [User]
            string sql = "SELECT * FROM [Orders]";
            using (SqlConnection conn = new SqlConnection(getConnectionString()))
            {
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    conn.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        Order order = new Order();
                        order.Id = int.Parse(reader["Orders_Id"].ToString());
                        order.FirstName = reader["Customer_First_Name"].ToString();
                        order.LastName = reader["Customer_Last_Name"].ToString();
                        order.Address = reader["Address"].ToString();
                        order.Item_Quantity = reader["Item_Quantity"].ToString();
                        order.Item_Id = reader["Item_Id"].ToString();
                        //order.Item_Name = reader["Item_Name"].ToString();
                        //order.Item_Price = reader["Item_Price"].ToString();

                        orders.Add(order);
                    }
                }
            }
            return orders;
        }

        //U-Update
        public static int Update(Order order)
        {
            int ret = 0;
            //create the Insert command
            string sql = "UPDATE [User] SET  " +
                "Customer_First_Name = @Customer_First_Name, Customer_Last_Name = @Customer_Last_Name, " +
                "Address = @Address, Item_Quantity = @Item_Quantity, Item_Id = @Item_Id WHERE (Orders_Id = @Orders_Id)";
            using (SqlConnection conn = new SqlConnection(getConnectionString()))
            {
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    conn.Open();

                    cmd.Parameters.AddWithValue("Orders_Id", order.Id);
                    cmd.Parameters.AddWithValue("Customer_First_Name", order.FirstName);
                    cmd.Parameters.AddWithValue("Customer_Last_Name", order.LastName);
                    cmd.Parameters.AddWithValue("Address", order.Address);
                    cmd.Parameters.AddWithValue("Item_Quantity", order.Item_Quantity);
                    cmd.Parameters.AddWithValue("Item_Id", order.Item_Id);
                    //cmd.Parameters.AddWithValue("Item_Name", order.Item_Name);
                    //cmd.Parameters.AddWithValue("Item_Price", order.Item_Price);

                    ret = cmd.ExecuteNonQuery();
                }
            }
            return ret;
        }

        //D-Delet
        //public static int Delete(User user)
        //{
        //    int ret = 0;
        //    //create the Insert command
        //    string sql = "DELETE FROM [User] WHERE (Id = @Id)";
        //    using (SqlConnection conn = new SqlConnection(getConnectionString()))
        //    {
        //        using (SqlCommand cmd = new SqlCommand(sql, conn))
        //        {
        //            conn.Open();

        //            cmd.Parameters.AddWithValue("Id", user.Id);
        //            ret = cmd.ExecuteNonQuery();
        //        }
        //    }
        //    return ret;
        //}

        private static string getConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        }
    }
}