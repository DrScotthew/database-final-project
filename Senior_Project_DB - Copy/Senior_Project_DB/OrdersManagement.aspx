<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrdersManagement.aspx.cs" Inherits="Senior_Project_DB.OrdersManagement" %>

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
                        <h1>Orders<asp:Button ID="Button1"
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
            The table below is displaying the order history for the items in your database:</p>
        </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource2" DataKeyNames="Orders_Id" HorizontalAlign="Center">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="Orders_Id" HeaderText="Orders_Id" ReadOnly="True" SortExpression="Orders_Id"></asp:BoundField>
        <asp:BoundField DataField="Item_Id" HeaderText="Item_Id" SortExpression="Item_Id"></asp:BoundField>
        <asp:BoundField DataField="Customer_First_Name" HeaderText="Customer_First_Name" SortExpression="Customer_First_Name"></asp:BoundField>
        <asp:BoundField DataField="Customer_Last_Name" HeaderText="Customer_Last_Name" SortExpression="Customer_Last_Name"></asp:BoundField>
        <asp:BoundField DataField="Address (Street, City, State, Zip)" HeaderText="Address (Street, City, State, Zip)" SortExpression="Address (Street, City, State, Zip)"></asp:BoundField>
        <asp:BoundField DataField="Item_Quantity" HeaderText="Item_Quantity" SortExpression="Item_Quantity"></asp:BoundField>
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
    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Orders]" UpdateCommand="UPDATE [Orders] SET [Item_Id] = @Item_Id, [Customer_First_Name] = @Customer_First_Name, [Customer_Last_Name] = @Customer_Last_Name, [Address (Street, City, State, Zip)] = @column1, [Item_Quantity] = @Item_Quantity WHERE [Orders_Id] = @original_Orders_Id AND [Item_Id] = @original_Item_Id AND [Customer_First_Name] = @original_Customer_First_Name AND [Customer_Last_Name] = @original_Customer_Last_Name AND [Address (Street, City, State, Zip)] = @original_column1 AND (([Item_Quantity] = @original_Item_Quantity) OR ([Item_Quantity] IS NULL AND @original_Item_Quantity IS NULL))" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Orders] WHERE [Orders_Id] = @original_Orders_Id AND [Item_Id] = @original_Item_Id AND [Customer_First_Name] = @original_Customer_First_Name AND [Customer_Last_Name] = @original_Customer_Last_Name AND [Address (Street, City, State, Zip)] = @original_column1 AND (([Item_Quantity] = @original_Item_Quantity) OR ([Item_Quantity] IS NULL AND @original_Item_Quantity IS NULL))" InsertCommand="INSERT INTO Orders(Orders_Id, Item_Id, Customer_First_Name, Customer_Last_Name, [Address (Street, City, State, Zip)], Item_Quantity) VALUES (@Orders_Id, @Item_Id, @Customer_First_Name, @Customer_Last_Name, @column1, @Item_Quantity)" OldValuesParameterFormatString="original_{0}">
        <DeleteParameters>
            <asp:Parameter Name="original_Orders_Id" Type="Int32" />
            <asp:Parameter Name="original_Item_Id" Type="Int32" />
            <asp:Parameter Name="original_Customer_First_Name" Type="String" />
            <asp:Parameter Name="original_Customer_Last_Name" Type="String" />
            <asp:Parameter Name="original_column1" Type="String" />
            <asp:Parameter Name="original_Item_Quantity" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Orders_Id" Type="Int32" />
            <asp:Parameter Name="Item_Id" Type="Int32" />
            <asp:Parameter Name="Customer_First_Name" Type="String" />
            <asp:Parameter Name="Customer_Last_Name" Type="String" />
            <asp:Parameter Name="column1" Type="String" />
            <asp:Parameter Name="Item_Quantity" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Item_Id" Type="Int32" />
            <asp:Parameter Name="Customer_First_Name" Type="String" />
            <asp:Parameter Name="Customer_Last_Name" Type="String" />
            <asp:Parameter Name="column1" Type="String" />
            <asp:Parameter Name="Item_Quantity" Type="Int32" />
            <asp:Parameter Name="original_Orders_Id" Type="Int32" />
            <asp:Parameter Name="original_Item_Id" Type="Int32" />
            <asp:Parameter Name="original_Customer_First_Name" Type="String" />
            <asp:Parameter Name="original_Customer_Last_Name" Type="String" />
            <asp:Parameter Name="original_column1" Type="String" />
            <asp:Parameter Name="original_Item_Quantity" Type="Int32" />
        </UpdateParameters>
        </asp:SqlDataSource>
        
<p>
    Orders_Id:
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
</p>
<p>
    First Name: <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
</p>
<p>
    Last Name:
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
</p>
        <p>
            Address:
            <asp:TextBox ID="TextBox4" runat="server" Height="16px"></asp:TextBox>
        </p>
        <p>
            Quantity:
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </p>
        <p>
            Item Id:
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </p>
        <p>
            Item Name:
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        </p>
        <p>
            Price:
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Button" />
        </p>
    </form>
</body>
</html>
