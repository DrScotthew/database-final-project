<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrdersManagement.aspx.cs" Inherits="Senior_Project_DB.OrdersManagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Orders Management</div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource2" DataKeyNames="Orders_Id">
    <Columns>
        <asp:BoundField DataField="Orders_Id" HeaderText="Orders_Id" ReadOnly="True" SortExpression="Orders_Id"></asp:BoundField>
        <asp:BoundField DataField="Customer_First_Name" HeaderText="Customer_First_Name" SortExpression="Customer_First_Name"></asp:BoundField>
        <asp:BoundField DataField="Customer_Last_Name" HeaderText="Customer_Last_Name" SortExpression="Customer_Last_Name"></asp:BoundField>
        <asp:BoundField DataField="Address (Street, City, State, Zip)" HeaderText="Address (Street, City, State, Zip)" SortExpression="Address (Street, City, State, Zip)"></asp:BoundField>
        <asp:BoundField DataField="Item_Quantity" HeaderText="Item_Quantity" SortExpression="Item_Quantity"></asp:BoundField>
        <asp:BoundField DataField="Item_Id" HeaderText="Item_Id" SortExpression="Item_Id"></asp:BoundField>
        <asp:BoundField DataField="Item_Name" HeaderText="Item_Name" SortExpression="Item_Name"></asp:BoundField>
        <asp:BoundField DataField="Item_Price" HeaderText="Item_Price" SortExpression="Item_Price"></asp:BoundField>
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
    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Orders.Orders_Id, Orders.Customer_First_Name, Orders.Customer_Last_Name, Orders.[Address (Street, City, State, Zip)], Orders.Item_Quantity, Orders.Item_Id, Inventory.Item_Name, Inventory.Item_Price FROM Orders INNER JOIN Inventory ON Orders.Item_Id = Inventory.Item_Id"></asp:SqlDataSource>
        
        <asp:Button ID="Button1" runat="server" PostBackUrl="~/InventoryStatusManagement.aspx" Text="Inventory Managment" Width="225px" />
        <p>
            <asp:Button ID="Button2" runat="server" PostBackUrl="~/DeliveryManagement.aspx" Text="Delivery Management" Width="225px" />
        </p>
        <asp:Button ID="Button3" runat="server" PostBackUrl="~/SalesManagement.aspx" Text="Sales Management" Width="225px" />
    </form>
</body>
</html>
