<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InventoryStatusManagement.aspx.cs" Inherits="Senior_Project_DB.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Inventory Status Management</div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Item_Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Item_Id" HeaderText="Item_Id" ReadOnly="True" SortExpression="Item_Id" />
                <asp:BoundField DataField="Item_Name" HeaderText="Item_Name" SortExpression="Item_Name" />
                <asp:BoundField DataField="Item_Quantity" HeaderText="Item_Quantity" SortExpression="Item_Quantity" />
                <asp:BoundField DataField="Item_Price" HeaderText="Item_Price" SortExpression="Item_Price" />
                <asp:BoundField DataField="Item_Location" HeaderText="Item_Location" SortExpression="Item_Location" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Inventory] WHERE [Item_Id] = @original_Item_Id AND (([Item_Name] = @original_Item_Name) OR ([Item_Name] IS NULL AND @original_Item_Name IS NULL)) AND (([Item_Quantity] = @original_Item_Quantity) OR ([Item_Quantity] IS NULL AND @original_Item_Quantity IS NULL)) AND (([Item_Price] = @original_Item_Price) OR ([Item_Price] IS NULL AND @original_Item_Price IS NULL)) AND (([Item_Location] = @original_Item_Location) OR ([Item_Location] IS NULL AND @original_Item_Location IS NULL))" InsertCommand="INSERT INTO [Inventory] ([Item_Id], [Item_Name], [Item_Quantity], [Item_Price], [Item_Location]) VALUES (@Item_Id, @Item_Name, @Item_Quantity, @Item_Price, @Item_Location)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [Item_Id], [Item_Name], [Item_Quantity], [Item_Price], [Item_Location] FROM [Inventory]" UpdateCommand="UPDATE [Inventory] SET [Item_Name] = @Item_Name, [Item_Quantity] = @Item_Quantity, [Item_Price] = @Item_Price, [Item_Location] = @Item_Location WHERE [Item_Id] = @original_Item_Id AND (([Item_Name] = @original_Item_Name) OR ([Item_Name] IS NULL AND @original_Item_Name IS NULL)) AND (([Item_Quantity] = @original_Item_Quantity) OR ([Item_Quantity] IS NULL AND @original_Item_Quantity IS NULL)) AND (([Item_Price] = @original_Item_Price) OR ([Item_Price] IS NULL AND @original_Item_Price IS NULL)) AND (([Item_Location] = @original_Item_Location) OR ([Item_Location] IS NULL AND @original_Item_Location IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Item_Id" Type="Int32" />
                <asp:Parameter Name="original_Item_Name" Type="String" />
                <asp:Parameter Name="original_Item_Quantity" Type="Int32" />
                <asp:Parameter Name="original_Item_Price" Type="Decimal" />
                <asp:Parameter Name="original_Item_Location" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Item_Id" Type="Int32" />
                <asp:Parameter Name="Item_Name" Type="String" />
                <asp:Parameter Name="Item_Quantity" Type="Int32" />
                <asp:Parameter Name="Item_Price" Type="Decimal" />
                <asp:Parameter Name="Item_Location" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Item_Name" Type="String" />
                <asp:Parameter Name="Item_Quantity" Type="Int32" />
                <asp:Parameter Name="Item_Price" Type="Decimal" />
                <asp:Parameter Name="Item_Location" Type="String" />
                <asp:Parameter Name="original_Item_Id" Type="Int32" />
                <asp:Parameter Name="original_Item_Name" Type="String" />
                <asp:Parameter Name="original_Item_Quantity" Type="Int32" />
                <asp:Parameter Name="original_Item_Price" Type="Decimal" />
                <asp:Parameter Name="original_Item_Location" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" PostBackUrl="~/DeliveryManagement.aspx" Text="Delivery Management" Width="223px" />
        <p>
            <asp:Button ID="Button2" runat="server" PostBackUrl="~/SalesManagement.aspx" Text="Sales Management" Width="222px" />
        </p>
        <asp:Button ID="Button3" runat="server" PostBackUrl="~/OrdersManagement.aspx" Text="Orders Management" Width="223px" />
    </form>
</body>
</html>
