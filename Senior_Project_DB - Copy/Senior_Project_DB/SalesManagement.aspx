<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SalesManagement.aspx.cs" Inherits="Senior_Project_DB.SalesManagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Sales Management</div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Sales_Id,Orders_Id,Item_Id" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="Sales_Id" HeaderText="Sales_Id" ReadOnly="True" SortExpression="Sales_Id" />
                
    <asp:BoundField DataField="Orders_Id" HeaderText="Orders_Id" ReadOnly="True" SortExpression="Orders_Id" />
    <asp:BoundField DataField="Item_Quantity" HeaderText="Item_Quantity" SortExpression="Item_Quantity"></asp:BoundField>
    <asp:BoundField DataField="Item_Id" HeaderText="Item_Id" ReadOnly="True" SortExpression="Item_Id" />
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
    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Sales.Sales_Id, Orders.Orders_Id, Orders.Item_Quantity, Inventory.Item_Id, Inventory.Item_Name, Inventory.Item_Price FROM Sales INNER JOIN Orders ON Sales.Order_Id = Orders.Orders_Id INNER JOIN Inventory ON Sales.Item_Id = Inventory.Item_Id"></asp:SqlDataSource>
        
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" PostBackUrl="~/InventoryStatusManagement.aspx" Text="Inventory Management" Width="211px" />
        <p>
            <asp:Button ID="Button2" runat="server" PostBackUrl="~/DeliveryManagement.aspx" Text="Delivery Management" Width="211px" />
        </p>
        <asp:Button ID="Button3" runat="server" PostBackUrl="~/OrdersManagement.aspx" Text="Orders Management" Width="211px" />
    </form>
</body>
</html>
