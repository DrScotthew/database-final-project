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
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Sales_Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Sales_Id" HeaderText="Sales_Id" ReadOnly="True" SortExpression="Sales_Id" />
                <asp:BoundField DataField="Order_Id" HeaderText="Order_Id" SortExpression="Order_Id" />
                <asp:BoundField DataField="Item_Id" HeaderText="Item_Id" SortExpression="Item_Id" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Sales] WHERE [Sales_Id] = @original_Sales_Id AND (([Order_Id] = @original_Order_Id) OR ([Order_Id] IS NULL AND @original_Order_Id IS NULL)) AND (([Item_Id] = @original_Item_Id) OR ([Item_Id] IS NULL AND @original_Item_Id IS NULL))" InsertCommand="INSERT INTO [Sales] ([Sales_Id], [Order_Id], [Item_Id]) VALUES (@Sales_Id, @Order_Id, @Item_Id)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Sales_Id], [Order_Id], [Item_Id] FROM [Sales]" UpdateCommand="UPDATE [Sales] SET [Order_Id] = @Order_Id, [Item_Id] = @Item_Id WHERE [Sales_Id] = @original_Sales_Id AND (([Order_Id] = @original_Order_Id) OR ([Order_Id] IS NULL AND @original_Order_Id IS NULL)) AND (([Item_Id] = @original_Item_Id) OR ([Item_Id] IS NULL AND @original_Item_Id IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Sales_Id" Type="Int32" />
                <asp:Parameter Name="original_Order_Id" Type="Int32" />
                <asp:Parameter Name="original_Item_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Sales_Id" Type="Int32" />
                <asp:Parameter Name="Order_Id" Type="Int32" />
                <asp:Parameter Name="Item_Id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Order_Id" Type="Int32" />
                <asp:Parameter Name="Item_Id" Type="Int32" />
                <asp:Parameter Name="original_Sales_Id" Type="Int32" />
                <asp:Parameter Name="original_Order_Id" Type="Int32" />
                <asp:Parameter Name="original_Item_Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" PostBackUrl="~/InventoryStatusManagement.aspx" Text="Inventory Management" Width="211px" />
        <p>
            <asp:Button ID="Button2" runat="server" PostBackUrl="~/DeliveryManagement.aspx" Text="Delivery Management" Width="211px" />
        </p>
        <asp:Button ID="Button3" runat="server" PostBackUrl="~/OrdersManagement.aspx" Text="Orders Management" Width="211px" />
    </form>
</body>
</html>
