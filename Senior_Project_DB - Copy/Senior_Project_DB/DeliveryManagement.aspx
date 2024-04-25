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
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="Delivery_Id" HorizontalAlign="Center">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="Delivery_Id" HeaderText="Delivery_Id" ReadOnly="True" SortExpression="Delivery_Id"></asp:BoundField>
            <asp:BoundField DataField="Order_Id" HeaderText="Order_Id" SortExpression="Order_Id"></asp:BoundField>
        <asp:BoundField DataField="Delivery_Date" HeaderText="Delivery_Date" SortExpression="Delivery_Date"></asp:BoundField>
        <asp:BoundField DataField="Delivery_Shipping_Vendor" HeaderText="Delivery_Shipping_Vendor" SortExpression="Delivery_Shipping_Vendor"></asp:BoundField>
        <asp:BoundField DataField="Delivery_Tracking_Number" HeaderText="Delivery_Tracking_Number" SortExpression="Delivery_Tracking_Number"></asp:BoundField>
        <asp:BoundField DataField="Delivery_Status" HeaderText="Delivery_Status" SortExpression="Delivery_Status"></asp:BoundField>
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
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Delivery]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Delivery] WHERE [Delivery_Id] = @original_Delivery_Id AND [Order_Id] = @original_Order_Id AND (([Delivery_Date] = @original_Delivery_Date) OR ([Delivery_Date] IS NULL AND @original_Delivery_Date IS NULL)) AND (([Delivery_Shipping_Vendor] = @original_Delivery_Shipping_Vendor) OR ([Delivery_Shipping_Vendor] IS NULL AND @original_Delivery_Shipping_Vendor IS NULL)) AND (([Delivery_Tracking_Number] = @original_Delivery_Tracking_Number) OR ([Delivery_Tracking_Number] IS NULL AND @original_Delivery_Tracking_Number IS NULL)) AND [Delivery_Status] = @original_Delivery_Status" InsertCommand="INSERT INTO [Delivery] ([Delivery_Id], [Order_Id], [Delivery_Date], [Delivery_Shipping_Vendor], [Delivery_Tracking_Number], [Delivery_Status]) VALUES (@Delivery_Id, @Order_Id, @Delivery_Date, @Delivery_Shipping_Vendor, @Delivery_Tracking_Number, @Delivery_Status)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Delivery] SET [Order_Id] = @Order_Id, [Delivery_Date] = @Delivery_Date, [Delivery_Shipping_Vendor] = @Delivery_Shipping_Vendor, [Delivery_Tracking_Number] = @Delivery_Tracking_Number, [Delivery_Status] = @Delivery_Status WHERE [Delivery_Id] = @original_Delivery_Id AND [Order_Id] = @original_Order_Id AND (([Delivery_Date] = @original_Delivery_Date) OR ([Delivery_Date] IS NULL AND @original_Delivery_Date IS NULL)) AND (([Delivery_Shipping_Vendor] = @original_Delivery_Shipping_Vendor) OR ([Delivery_Shipping_Vendor] IS NULL AND @original_Delivery_Shipping_Vendor IS NULL)) AND (([Delivery_Tracking_Number] = @original_Delivery_Tracking_Number) OR ([Delivery_Tracking_Number] IS NULL AND @original_Delivery_Tracking_Number IS NULL)) AND [Delivery_Status] = @original_Delivery_Status">
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
