using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Senior_Project_DB.Models
{
    public class Order
    {
        public int Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Address { get; set; }
        public string Item_Quantity { get; set; }
        public string Item_Id { get; set; }

        //public string Item_Name { get; set; }
        //public string Item_Price { get; set; }

    }
}