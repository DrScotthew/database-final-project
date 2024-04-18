<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeliveryManagement.aspx.cs" Inherits="Senior_Project_DB.DeliveryManagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Delivery Management</div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Delivery_Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Delivery_Id" HeaderText="Delivery_Id" ReadOnly="True" SortExpression="Delivery_Id" />
                <asp:BoundField DataField="Order_Id" HeaderText="Order_Id" SortExpression="Order_Id" />
                <asp:BoundField DataField="Delivery_Date" HeaderText="Delivery_Date" SortExpression="Delivery_Date" />
                <asp:BoundField DataField="Delivery_Shipping_Vendor" HeaderText="Delivery_Shipping_Vendor" SortExpression="Delivery_Shipping_Vendor" />
                <asp:BoundField DataField="Delivery_Tracking_Number" HeaderText="Delivery_Tracking_Number" SortExpression="Delivery_Tracking_Number" />
                <asp:BoundField DataField="Delivery_Status" HeaderText="Delivery_Status" SortExpression="Delivery_Status" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Delivery] WHERE [Delivery_Id] = @original_Delivery_Id AND [Order_Id] = @original_Order_Id AND (([Delivery_Date] = @original_Delivery_Date) OR ([Delivery_Date] IS NULL AND @original_Delivery_Date IS NULL)) AND (([Delivery_Shipping_Vendor] = @original_Delivery_Shipping_Vendor) OR ([Delivery_Shipping_Vendor] IS NULL AND @original_Delivery_Shipping_Vendor IS NULL)) AND (([Delivery_Tracking_Number] = @original_Delivery_Tracking_Number) OR ([Delivery_Tracking_Number] IS NULL AND @original_Delivery_Tracking_Number IS NULL)) AND [Delivery_Status] = @original_Delivery_Status" InsertCommand="INSERT INTO [Delivery] ([Delivery_Id], [Order_Id], [Delivery_Date], [Delivery_Shipping_Vendor], [Delivery_Tracking_Number], [Delivery_Status]) VALUES (@Delivery_Id, @Order_Id, @Delivery_Date, @Delivery_Shipping_Vendor, @Delivery_Tracking_Number, @Delivery_Status)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Delivery_Id], [Order_Id], [Delivery_Date], [Delivery_Shipping_Vendor], [Delivery_Tracking_Number], [Delivery_Status] FROM [Delivery]" UpdateCommand="UPDATE [Delivery] SET [Order_Id] = @Order_Id, [Delivery_Date] = @Delivery_Date, [Delivery_Shipping_Vendor] = @Delivery_Shipping_Vendor, [Delivery_Tracking_Number] = @Delivery_Tracking_Number, [Delivery_Status] = @Delivery_Status WHERE [Delivery_Id] = @original_Delivery_Id AND [Order_Id] = @original_Order_Id AND (([Delivery_Date] = @original_Delivery_Date) OR ([Delivery_Date] IS NULL AND @original_Delivery_Date IS NULL)) AND (([Delivery_Shipping_Vendor] = @original_Delivery_Shipping_Vendor) OR ([Delivery_Shipping_Vendor] IS NULL AND @original_Delivery_Shipping_Vendor IS NULL)) AND (([Delivery_Tracking_Number] = @original_Delivery_Tracking_Number) OR ([Delivery_Tracking_Number] IS NULL AND @original_Delivery_Tracking_Number IS NULL)) AND [Delivery_Status] = @original_Delivery_Status">
            <DeleteParameters>
                <asp:Parameter Name="original_Delivery_Id" Type="Int32" />
                <asp:Parameter Name="original_Order_Id" Type="Int32" />
                <asp:Parameter Name="original_Delivery_Date" Type="String" />
                <asp:Parameter Name="original_Delivery_Shipping_Vendor" Type="String" />
                <asp:Parameter Name="original_Delivery_Tracking_Number" Type="String" />
                <asp:Parameter Name="original_Delivery_Status" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Delivery_Id" Type="Int32" />
                <asp:Parameter Name="Order_Id" Type="Int32" />
                <asp:Parameter Name="Delivery_Date" Type="String" />
                <asp:Parameter Name="Delivery_Shipping_Vendor" Type="String" />
                <asp:Parameter Name="Delivery_Tracking_Number" Type="String" />
                <asp:Parameter Name="Delivery_Status" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Order_Id" Type="Int32" />
                <asp:Parameter Name="Delivery_Date" Type="String" />
                <asp:Parameter Name="Delivery_Shipping_Vendor" Type="String" />
                <asp:Parameter Name="Delivery_Tracking_Number" Type="String" />
                <asp:Parameter Name="Delivery_Status" Type="String" />
                <asp:Parameter Name="original_Delivery_Id" Type="Int32" />
                <asp:Parameter Name="original_Order_Id" Type="Int32" />
                <asp:Parameter Name="original_Delivery_Date" Type="String" />
                <asp:Parameter Name="original_Delivery_Shipping_Vendor" Type="String" />
                <asp:Parameter Name="original_Delivery_Tracking_Number" Type="String" />
                <asp:Parameter Name="original_Delivery_Status" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" PostBackUrl="~/InventoryStatusManagement.aspx" Text="Inventory Management" Width="224px" />
        <p>
            <asp:Button ID="Button2" runat="server" PostBackUrl="~/SalesManagement.aspx" Text="Sales Management" Width="224px" />
        </p>
        <asp:Button ID="Button3" runat="server" PostBackUrl="~/OrdersManagement.aspx" Text="Orders Management" Width="224px" />
    </form>
</body>
</html>
