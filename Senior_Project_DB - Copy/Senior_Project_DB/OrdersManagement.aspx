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
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Orders_Id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Orders_Id" HeaderText="Orders_Id" ReadOnly="True" SortExpression="Orders_Id" />
                <asp:BoundField DataField="Item_Id" HeaderText="Item_Id" SortExpression="Item_Id" />
                <asp:BoundField DataField="Customer_First_Name" HeaderText="Customer_First_Name" SortExpression="Customer_First_Name" />
                <asp:BoundField DataField="Customer_Last_Name" HeaderText="Customer_Last_Name" SortExpression="Customer_Last_Name" />
                <asp:BoundField DataField="column1" HeaderText="column1" SortExpression="column1" />
                <asp:BoundField DataField="Item_Quantity" HeaderText="Item_Quantity" SortExpression="Item_Quantity" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Orders] WHERE [Orders_Id] = @original_Orders_Id AND (([Item_Id] = @original_Item_Id) OR ([Item_Id] IS NULL AND @original_Item_Id IS NULL)) AND (([Customer_First_Name] = @original_Customer_First_Name) OR ([Customer_First_Name] IS NULL AND @original_Customer_First_Name IS NULL)) AND (([Customer_Last_Name] = @original_Customer_Last_Name) OR ([Customer_Last_Name] IS NULL AND @original_Customer_Last_Name IS NULL)) AND (([Address (Street, City, State, Zip)] = @original_column1) OR ([Address (Street, City, State, Zip)] IS NULL AND @original_column1 IS NULL)) AND (([Item_Quantity] = @original_Item_Quantity) OR ([Item_Quantity] IS NULL AND @original_Item_Quantity IS NULL))" InsertCommand="INSERT INTO [Orders] ([Orders_Id], [Item_Id], [Customer_First_Name], [Customer_Last_Name], [Address (Street, City, State, Zip)], [Item_Quantity]) VALUES (@Orders_Id, @Item_Id, @Customer_First_Name, @Customer_Last_Name, @column1, @Item_Quantity)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Orders_Id], [Item_Id], [Customer_First_Name], [Customer_Last_Name], [Address (Street, City, State, Zip)] AS column1, [Item_Quantity] FROM [Orders]" UpdateCommand="UPDATE [Orders] SET [Item_Id] = @Item_Id, [Customer_First_Name] = @Customer_First_Name, [Customer_Last_Name] = @Customer_Last_Name, [Address (Street, City, State, Zip)] = @column1, [Item_Quantity] = @Item_Quantity WHERE [Orders_Id] = @original_Orders_Id AND (([Item_Id] = @original_Item_Id) OR ([Item_Id] IS NULL AND @original_Item_Id IS NULL)) AND (([Customer_First_Name] = @original_Customer_First_Name) OR ([Customer_First_Name] IS NULL AND @original_Customer_First_Name IS NULL)) AND (([Customer_Last_Name] = @original_Customer_Last_Name) OR ([Customer_Last_Name] IS NULL AND @original_Customer_Last_Name IS NULL)) AND (([Address (Street, City, State, Zip)] = @original_column1) OR ([Address (Street, City, State, Zip)] IS NULL AND @original_column1 IS NULL)) AND (([Item_Quantity] = @original_Item_Quantity) OR ([Item_Quantity] IS NULL AND @original_Item_Quantity IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Orders_Id" Type="Int32" />
                <asp:Parameter Name="original_Item_Id" Type="Int32" />
                <asp:Parameter Name="original_Customer_First_Name" Type="String" />
                <asp:Parameter Name="original_Customer_Last_Name" Type="String" />
                <asp:Parameter Name="original_column1" Type="String" />
                <asp:Parameter Name="original_Item_Quantity" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Orders_Id" Type="Int32" />
                <asp:Parameter Name="Item_Id" Type="Int32" />
                <asp:Parameter Name="Customer_First_Name" Type="String" />
                <asp:Parameter Name="Customer_Last_Name" Type="String" />
                <asp:Parameter Name="column1" Type="String" />
                <asp:Parameter Name="Item_Quantity" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Item_Id" Type="Int32" />
                <asp:Parameter Name="Customer_First_Name" Type="String" />
                <asp:Parameter Name="Customer_Last_Name" Type="String" />
                <asp:Parameter Name="column1" Type="String" />
                <asp:Parameter Name="Item_Quantity" Type="String" />
                <asp:Parameter Name="original_Orders_Id" Type="Int32" />
                <asp:Parameter Name="original_Item_Id" Type="Int32" />
                <asp:Parameter Name="original_Customer_First_Name" Type="String" />
                <asp:Parameter Name="original_Customer_Last_Name" Type="String" />
                <asp:Parameter Name="original_column1" Type="String" />
                <asp:Parameter Name="original_Item_Quantity" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" PostBackUrl="~/InventoryStatusManagement.aspx" Text="Inventory Managment" Width="225px" />
        <p>
            <asp:Button ID="Button2" runat="server" PostBackUrl="~/DeliveryManagement.aspx" Text="Delivery Management" Width="225px" />
        </p>
        <asp:Button ID="Button3" runat="server" PostBackUrl="~/SalesManagement.aspx" Text="Sales Management" Width="225px" />
    </form>
</body>
</html>
