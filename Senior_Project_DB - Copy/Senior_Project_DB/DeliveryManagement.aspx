<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeliveryManagement.aspx.cs" Inherits="Senior_Project_DB.DeliveryManagement" %>

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
<body style="background-color:#04AA6D;">
    <form id="form1" runat="server">
        <div>
            <h1>Delivery Management</h1>
            <p>Manage your deliveries here:</p>

        </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="Delivery_Id,Orders_Id" HorizontalAlign="Center">
        <Columns>
        <asp:BoundField DataField="Delivery_Id" HeaderText="Delivery_Id" ReadOnly="True" SortExpression="Delivery_Id"></asp:BoundField>
        <asp:BoundField DataField="Delivery_Date" HeaderText="Delivery_Date" SortExpression="Delivery_Date"></asp:BoundField>
        <asp:BoundField DataField="Delivery_Shipping_Vendor" HeaderText="Delivery_Shipping_Vendor" SortExpression="Delivery_Shipping_Vendor"></asp:BoundField>
        <asp:BoundField DataField="Delivery_Tracking_Number" HeaderText="Delivery_Tracking_Number" SortExpression="Delivery_Tracking_Number"></asp:BoundField>
        <asp:BoundField DataField="Delivery_Status" HeaderText="Delivery_Status" SortExpression="Delivery_Status"></asp:BoundField>
            <asp:BoundField DataField="Orders_Id" HeaderText="Orders_Id" ReadOnly="True" SortExpression="Orders_Id"></asp:BoundField>
            <asp:BoundField DataField="Customer_First_Name" HeaderText="Customer_First_Name" SortExpression="Customer_First_Name"></asp:BoundField>
        <asp:BoundField DataField="Customer_Last_Name" HeaderText="Customer_Last_Name" SortExpression="Customer_Last_Name"></asp:BoundField>
        <asp:BoundField DataField="Address (Street, City, State, Zip)" HeaderText="Address (Street, City, State, Zip)" SortExpression="Address (Street, City, State, Zip)"></asp:BoundField>
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
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Delivery.Delivery_Id, Delivery.Delivery_Date, Delivery.Delivery_Shipping_Vendor, Delivery.Delivery_Tracking_Number, Delivery.Delivery_Status, Orders.Orders_Id, Orders.Customer_First_Name, Orders.Customer_Last_Name, Orders.[Address (Street, City, State, Zip)] FROM Delivery INNER JOIN Orders ON Delivery.Order_Id = Orders.Orders_Id"></asp:SqlDataSource>
    
    
    
        <p>
    <%--<button class="button button1">Delivery</button>--%>
    <asp:Button ID="Button1"
        class="button button1"
        runat="server"  
        PostBackUrl="~/DeliveryManagement.aspx" 
        Text="Delivery"/>
    <asp:Button ID="Button2" class="button button2" runat="server" Height="100px" PostBackUrl="~/InventoryStatusManagement.aspx" Text="Inventory" Width="200px" />
    <asp:Button ID="Button3" class ="button button3" runat="server" Height="100px" PostBackUrl="~/OrdersManagement.aspx" Text="Orders" Width="200px" />
    <asp:Button ID="Button4" class ="button button4" runat="server" Height="100px" PostBackUrl="~/SalesManagement.aspx" Text="Sales" Width="200px" />
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
