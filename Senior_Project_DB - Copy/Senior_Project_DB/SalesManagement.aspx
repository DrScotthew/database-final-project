<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SalesManagement.aspx.cs" Inherits="Senior_Project_DB.SalesManagement" %>

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
<body style="background-color:white;">

    <form id="form1" runat="server">
        <div>
            <h1>Sales<asp:Button ID="Button1"
    class="button button1"
    runat="server"  
    PostBackUrl="~/DeliveryManagement.aspx" 
    Text="Delivery"
    Height="50px"
    Width="300px"/>
<asp:Button ID="Button2" class="button button2" runat="server" Height="50px" PostBackUrl="~/InventoryStatusManagement.aspx" Text="Inventory" Width="300px" />
<asp:Button ID="Button3" class ="button button3" runat="server" Height="50px" PostBackUrl="~/OrdersManagement.aspx" Text="Orders" Width="300px" />
<asp:Button ID="Button4" class ="button button4" runat="server" Height="50px" PostBackUrl="~/SalesManagement.aspx" Text="Sales" Width="300px" />
</h1>
            <%--<h1>Sales Management</h1>--%>
            <p>Manage your sales here: </p>
        </div>
        <p></p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Sales Id,Order Id,Item Id" DataSourceID="SqlDataSource2" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="Sales Id" HeaderText="Sales Id" ReadOnly="True" SortExpression="Sales Id" />
                
    <asp:BoundField DataField="Order Id" HeaderText="Order Id" ReadOnly="True" SortExpression="Order Id" />
    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity"></asp:BoundField>
    <asp:BoundField DataField="Item Id" HeaderText="Item Id" ReadOnly="True" SortExpression="Item Id" />
    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"></asp:BoundField>
    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price"></asp:BoundField>
</Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Sales.Sales_Id AS [Sales Id], Orders.Orders_Id AS [Order Id], Orders.Item_Quantity AS Quantity, Inventory.Item_Id AS [Item Id], Inventory.Item_Name AS Name, Inventory.Item_Price AS Price FROM Sales INNER JOIN Orders ON Sales.Order_Id = Orders.Orders_Id INNER JOIN Inventory ON Sales.Item_Id = Inventory.Item_Id"></asp:SqlDataSource>
        
        <p>
    <%--<button class="button button1">Delivery</button>--%>
    <%--<asp:Button ID="Button1"
        class="button button1"
        runat="server"  
        PostBackUrl="~/DeliveryManagement.aspx" 
        Text="Delivery"/>
    <asp:Button ID="Button2" class="button button2" runat="server" Height="100px" PostBackUrl="~/InventoryStatusManagement.aspx" Text="Inventory" Width="200px" />
    <asp:Button ID="Button3" class ="button button3" runat="server" Height="100px" PostBackUrl="~/OrdersManagement.aspx" Text="Orders" Width="200px" />
    <asp:Button ID="Button4" class ="button button4" runat="server" Height="100px" PostBackUrl="~/SalesManagement.aspx" Text="Sales" Width="200px" />--%>
</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
    </form>
</body>
</html>
