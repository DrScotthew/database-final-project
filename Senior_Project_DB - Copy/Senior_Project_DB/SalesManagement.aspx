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
<body style="background-color:mediumorchid;">
    <form id="form1" runat="server">
        <div>
            <h1>Sales Management</h1>
            <p>Manage your sales here: </p>
        </div>
        <p></p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Orders_Id" DataSourceID="SqlDataSource2" HorizontalAlign="Center">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Customer_First_Name" HeaderText="Customer_First_Name" SortExpression="Customer_First_Name" />
                
    <asp:BoundField DataField="Customer_Last_Name" HeaderText="Customer_Last_Name" SortExpression="Customer_Last_Name" />
                <asp:BoundField DataField="Item_Quantity" HeaderText="Item_Quantity" SortExpression="Item_Quantity" />
                <asp:BoundField DataField="Orders_Id" HeaderText="Orders_Id" ReadOnly="True" SortExpression="Orders_Id" />
    <asp:BoundField DataField="Item_Id" HeaderText="Item_Id" SortExpression="Item_Id"></asp:BoundField>
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
    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Customer_First_Name], [Customer_Last_Name], [Item_Quantity], [Orders_Id], [Item_Id] FROM [Orders]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Orders] WHERE [Orders_Id] = @original_Orders_Id AND [Customer_First_Name] = @original_Customer_First_Name AND [Customer_Last_Name] = @original_Customer_Last_Name AND (([Item_Quantity] = @original_Item_Quantity) OR ([Item_Quantity] IS NULL AND @original_Item_Quantity IS NULL)) AND [Item_Id] = @original_Item_Id" InsertCommand="INSERT INTO [Orders] ([Customer_First_Name], [Customer_Last_Name], [Item_Quantity], [Orders_Id], [Item_Id]) VALUES (@Customer_First_Name, @Customer_Last_Name, @Item_Quantity, @Orders_Id, @Item_Id)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Orders] SET [Customer_First_Name] = @Customer_First_Name, [Customer_Last_Name] = @Customer_Last_Name, [Item_Quantity] = @Item_Quantity, [Item_Id] = @Item_Id WHERE [Orders_Id] = @original_Orders_Id AND [Customer_First_Name] = @original_Customer_First_Name AND [Customer_Last_Name] = @original_Customer_Last_Name AND (([Item_Quantity] = @original_Item_Quantity) OR ([Item_Quantity] IS NULL AND @original_Item_Quantity IS NULL)) AND [Item_Id] = @original_Item_Id">
        <DeleteParameters>
            <asp:Parameter Name="original_Orders_Id" Type="Int32" />
            <asp:Parameter Name="original_Customer_First_Name" Type="String" />
            <asp:Parameter Name="original_Customer_Last_Name" Type="String" />
            <asp:Parameter Name="original_Item_Quantity" Type="Int32" />
            <asp:Parameter Name="original_Item_Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Customer_First_Name" Type="String" />
            <asp:Parameter Name="Customer_Last_Name" Type="String" />
            <asp:Parameter Name="Item_Quantity" Type="Int32" />
            <asp:Parameter Name="Orders_Id" Type="Int32" />
            <asp:Parameter Name="Item_Id" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Customer_First_Name" Type="String" />
            <asp:Parameter Name="Customer_Last_Name" Type="String" />
            <asp:Parameter Name="Item_Quantity" Type="Int32" />
            <asp:Parameter Name="Item_Id" Type="Int32" />
            <asp:Parameter Name="original_Orders_Id" Type="Int32" />
            <asp:Parameter Name="original_Customer_First_Name" Type="String" />
            <asp:Parameter Name="original_Customer_Last_Name" Type="String" />
            <asp:Parameter Name="original_Item_Quantity" Type="Int32" />
            <asp:Parameter Name="original_Item_Id" Type="Int32" />
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
