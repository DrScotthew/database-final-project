<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Senior_Project_DB.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
h1 {text-align: center;}
p {text-align: center;}
div {text-align: center;}

.button {
  background-color: #04AA6D; /* Green */
  border: none;
  color: white;
  height: 100px;
  width: 200px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 24px;
  transition-duration: 0.4s;
  cursor: pointer;
}
.button1 {
  background-color: white; 
  color: black; 
  border: 2px solid #04AA6D;
}

.button1:hover {
  background-color: #04AA6D;
  color: white;
}
.button2 {
  background-color: white; 
  color: black; 
  border: 2px solid #008CBA;
}

.button2:hover {
  background-color: #008CBA;
  color: white;
}

.button3 {
  background-color: white; 
  color: black; 
  border: 2px solid #f44336;
}

.button3:hover {
  background-color: #f44336;
  color: white;
}

.button4 {
  background-color: white;
  color: black;
  border: 2px solid #e7e7e7;
}

.button4:hover {background-color: mediumorchid;}
</style>
</head>
<body style="background-color:powderblue;">
    <form id="form1" runat="server">
        <h1>Database Management</h1>
        <p>Please select an option for managing your database:</p>
        <div>
        </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <%--<button class="button button1">Delivery</button>--%>
            <asp:Button ID="Button1"
                class="button button1"
                runat="server"  
                PostBackUrl="~/DeliveryManagement.aspx" 
                Text="Delivery"/>
        </p>
        <p>
            <asp:Button ID="Button2" class="button button2" runat="server" Height="100px" PostBackUrl="~/InventoryStatusManagement.aspx" Text="Inventory" Width="200px" />
        </p>
        <p>
            <asp:Button ID="Button3" class ="button button3" runat="server" Height="100px" PostBackUrl="~/OrdersManagement.aspx" Text="Orders" Width="200px" />
        </p>
        <p>
            <asp:Button ID="Button4" class ="button button4" runat="server" Height="100px" PostBackUrl="~/SalesManagement.aspx" Text="Sales" Width="200px" />
        </p>
    </form>
</body>
</html>
