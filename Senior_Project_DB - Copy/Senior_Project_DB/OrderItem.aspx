<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderItem.aspx.cs" Inherits="Senior_Project_DB.OrderItem" %>

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

.test a {
    margin-left: 10px; 
    float: left;
    text-align: center;
    overflow: auto;
    height: 190px;
    width: 425px;
    display: inline-block;
}

.test a img {
    display: inline-block;
    width: 100px;
    border:2px solid white; 
    border-radius: 50%;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>                        
            <h1>Order an item<asp:Button ID="Button1"
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
        </div>
        <div class="test a img ">
            <a>
                <img src="/Images/computer.jpg" style="float:left; margin-right: 10px"/>
                <h3>Desktop Computer</h3>
                <h3> 
                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Add to Cart" />
            </h3>
            </a>
            <a>
                <img src="/Images/mouse.jpg" style="float:left; margin-right: 10px"/>
                <h3>Computer Mouse</h3>
                <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Add to Cart" />
            </a>
            <a>
                 <img src="/Images/mousepad.jpg" style="float:left; margin-right: 10px"/>
                 <h3>Mousepad</h3>
                <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Add to Cart" />
            </a>
            <div style="clear:left">
                <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                    <AlternatingItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            </td>
                            <td>
                                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                            </td>
                            <td>
                                <asp:Label ID="Item_IdLabel" runat="server" Text='<%# Eval("Item_Id") %>' />
                            </td>
                            <td>
                                <asp:Label ID="Item_NameLabel" runat="server" Text='<%# Eval("Item_Name") %>' />
                            </td>
                            <td>
                                <asp:Label ID="Item_PriceLabel" runat="server" Text='<%# Eval("Item_Price") %>' />
                            </td>
                            <td>
                                <asp:Label ID="Item_QuantityLabel" runat="server" Text='<%# Eval("Item_Quantity") %>' />
                            </td>
                        </tr>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                            </td>
                            <td>
                                <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="Item_IdTextBox" runat="server" Text='<%# Bind("Item_Id") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="Item_NameTextBox" runat="server" Text='<%# Bind("Item_Name") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="Item_PriceTextBox" runat="server" Text='<%# Bind("Item_Price") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="Item_QuantityTextBox" runat="server" Text='<%# Bind("Item_Quantity") %>' />
                            </td>
                        </tr>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <table runat="server" style="">
                            <tr>
                                <td>No data was returned.</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                            </td>
                            <td>
                                <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="Item_IdTextBox" runat="server" Text='<%# Bind("Item_Id") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="Item_NameTextBox" runat="server" Text='<%# Bind("Item_Name") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="Item_PriceTextBox" runat="server" Text='<%# Bind("Item_Price") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="Item_QuantityTextBox" runat="server" Text='<%# Bind("Item_Quantity") %>' />
                            </td>
                        </tr>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            </td>
                            <td>
                                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                            </td>
                            <td>
                                <asp:Label ID="Item_IdLabel" runat="server" Text='<%# Eval("Item_Id") %>' />
                            </td>
                            <td>
                                <asp:Label ID="Item_NameLabel" runat="server" Text='<%# Eval("Item_Name") %>' />
                            </td>
                            <td>
                                <asp:Label ID="Item_PriceLabel" runat="server" Text='<%# Eval("Item_Price") %>' />
                            </td>
                            <td>
                                <asp:Label ID="Item_QuantityLabel" runat="server" Text='<%# Eval("Item_Quantity") %>' />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                        <tr runat="server" style="">
                                            <th runat="server"></th>
                                            <th runat="server">Id</th>
                                            <th runat="server">Item_Id</th>
                                            <th runat="server">Item_Name</th>
                                            <th runat="server">Item_Price</th>
                                            <th runat="server">Item_Quantity</th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="">
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            </td>
                            <td>
                                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                            </td>
                            <td>
                                <asp:Label ID="Item_IdLabel" runat="server" Text='<%# Eval("Item_Id") %>' />
                            </td>
                            <td>
                                <asp:Label ID="Item_NameLabel" runat="server" Text='<%# Eval("Item_Name") %>' />
                            </td>
                            <td>
                                <asp:Label ID="Item_PriceLabel" runat="server" Text='<%# Eval("Item_Price") %>' />
                            </td>
                            <td>
                                <asp:Label ID="Item_QuantityLabel" runat="server" Text='<%# Eval("Item_Quantity") %>' />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>
                <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="BUY NOW" />
            </div>
</div>
        <p>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Cart] WHERE [Id] = @original_Id" InsertCommand="INSERT INTO [Cart] ([Id], [Item_Id], [Item_Name], [Item_Price], [Item_Quantity]) VALUES (@Id, @Item_Id, @Item_Name, @Item_Price, @Item_Quantity)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Cart]" UpdateCommand="UPDATE [Cart] SET [Item_Id] = @Item_Id, [Item_Name] = @Item_Name, [Item_Price] = @Item_Price, [Item_Quantity] = @Item_Quantity WHERE [Id] = @original_Id">
                <DeleteParameters>
                    <asp:Parameter Name="original_Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                    <asp:Parameter Name="Item_Id" Type="String" />
                    <asp:Parameter Name="Item_Name" Type="String" />
                    <asp:Parameter Name="Item_Price" Type="Decimal" />
                    <asp:Parameter Name="Item_Quantity" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Item_Id" Type="String" />
                    <asp:Parameter Name="Item_Name" Type="String" />
                    <asp:Parameter Name="Item_Price" Type="Decimal" />
                    <asp:Parameter Name="Item_Quantity" Type="Int32" />
                    <asp:Parameter Name="original_Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </p>
        <asp:ListView ID="ListView2" runat="server" DataKeyNames="Id,Item_Id1" DataSourceID="SqlDataSource2">
            <AlternatingItemTemplate>
                <tr style="background-color:#FFF8DC;">
                    <td>
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Item_IdLabel" runat="server" Text='<%# Eval("Item_Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Item_NameLabel" runat="server" Text='<%# Eval("Item_Name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Item_PriceLabel" runat="server" Text='<%# Eval("Item_Price") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Item_QuantityLabel" runat="server" Text='<%# Eval("Item_Quantity") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Item_Id1Label" runat="server" Text='<%# Eval("Item_Id1") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Item_Name1Label" runat="server" Text='<%# Eval("Item_Name1") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Item_Quantity1Label" runat="server" Text='<%# Eval("Item_Quantity1") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Item_Price1Label" runat="server" Text='<%# Eval("Item_Price1") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Item_LocationLabel" runat="server" Text='<%# Eval("Item_Location") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color:#008A8C;color: #FFFFFF;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Item_IdTextBox" runat="server" Text='<%# Bind("Item_Id") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Item_NameTextBox" runat="server" Text='<%# Bind("Item_Name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Item_PriceTextBox" runat="server" Text='<%# Bind("Item_Price") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Item_QuantityTextBox" runat="server" Text='<%# Bind("Item_Quantity") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Item_Id1Label1" runat="server" Text='<%# Eval("Item_Id1") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Item_Name1TextBox" runat="server" Text='<%# Bind("Item_Name1") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Item_Quantity1TextBox" runat="server" Text='<%# Bind("Item_Quantity1") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Item_Price1TextBox" runat="server" Text='<%# Bind("Item_Price1") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Item_LocationTextBox" runat="server" Text='<%# Bind("Item_Location") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>
                        <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Item_IdTextBox" runat="server" Text='<%# Bind("Item_Id") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Item_NameTextBox" runat="server" Text='<%# Bind("Item_Name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Item_PriceTextBox" runat="server" Text='<%# Bind("Item_Price") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Item_QuantityTextBox" runat="server" Text='<%# Bind("Item_Quantity") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Item_Id1TextBox" runat="server" Text='<%# Bind("Item_Id1") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Item_Name1TextBox" runat="server" Text='<%# Bind("Item_Name1") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Item_Quantity1TextBox" runat="server" Text='<%# Bind("Item_Quantity1") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Item_Price1TextBox" runat="server" Text='<%# Bind("Item_Price1") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Item_LocationTextBox" runat="server" Text='<%# Bind("Item_Location") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color:#DCDCDC;color: #000000;">
                    <td>
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Item_IdLabel" runat="server" Text='<%# Eval("Item_Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Item_NameLabel" runat="server" Text='<%# Eval("Item_Name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Item_PriceLabel" runat="server" Text='<%# Eval("Item_Price") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Item_QuantityLabel" runat="server" Text='<%# Eval("Item_Quantity") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Item_Id1Label" runat="server" Text='<%# Eval("Item_Id1") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Item_Name1Label" runat="server" Text='<%# Eval("Item_Name1") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Item_Quantity1Label" runat="server" Text='<%# Eval("Item_Quantity1") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Item_Price1Label" runat="server" Text='<%# Eval("Item_Price1") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Item_LocationLabel" runat="server" Text='<%# Eval("Item_Location") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                    <th runat="server"></th>
                                    <th runat="server">Id</th>
                                    <th runat="server">Item_Id</th>
                                    <th runat="server">Item_Name</th>
                                    <th runat="server">Item_Price</th>
                                    <th runat="server">Item_Quantity</th>
                                    <th runat="server">Item_Id1</th>
                                    <th runat="server">Item_Name1</th>
                                    <th runat="server">Item_Quantity1</th>
                                    <th runat="server">Item_Price1</th>
                                    <th runat="server">Item_Location</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                    <td>
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Item_IdLabel" runat="server" Text='<%# Eval("Item_Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Item_NameLabel" runat="server" Text='<%# Eval("Item_Name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Item_PriceLabel" runat="server" Text='<%# Eval("Item_Price") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Item_QuantityLabel" runat="server" Text='<%# Eval("Item_Quantity") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Item_Id1Label" runat="server" Text='<%# Eval("Item_Id1") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Item_Name1Label" runat="server" Text='<%# Eval("Item_Name1") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Item_Quantity1Label" runat="server" Text='<%# Eval("Item_Quantity1") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Item_Price1Label" runat="server" Text='<%# Eval("Item_Price1") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Item_LocationLabel" runat="server" Text='<%# Eval("Item_Location") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Cart.*, Inventory.* FROM Cart INNER JOIN Inventory ON Cart.Id = Inventory.Item_Id" UpdateCommand="UPDATE Cart SET Item_Id = Cart.Item_Id, Item_Price = Cart.Item_Price, Item_Name = Cart.Item_Name, Item_Quantity = Cart.Item_Quantity FROM Cart INNER JOIN Inventory ON Cart.Id = Inventory.Item_Id"></asp:SqlDataSource>
    </form>
</body>
</html>
