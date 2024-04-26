<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Senior_Project_DB.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>                        
            <h1>Cart<asp:Button ID="Button1"
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

                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="Id" InsertItemPosition="LastItem">
                    <AlternatingItemTemplate>
                        <tr style="background-color:#FFF8DC;">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
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
                        </tr>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <tr style="background-color:#DCDCDC;color: #000000;">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
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
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
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
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Cart] WHERE [Id] = @original_Id AND [Item_Id] = @original_Item_Id AND [Item_Name] = @original_Item_Name AND [Item_Price] = @original_Item_Price AND [Item_Quantity] = @original_Item_Quantity" InsertCommand="INSERT INTO [Cart] ([Id], [Item_Id], [Item_Name], [Item_Price], [Item_Quantity]) VALUES (@Id, @Item_Id, @Item_Name, @Item_Price, @Item_Quantity)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Cart]" UpdateCommand="UPDATE [Cart] SET [Item_Id] = @Item_Id, [Item_Name] = @Item_Name, [Item_Price] = @Item_Price, [Item_Quantity] = @Item_Quantity WHERE [Id] = @original_Id AND [Item_Id] = @original_Item_Id AND [Item_Name] = @original_Item_Name AND [Item_Price] = @original_Item_Price AND [Item_Quantity] = @original_Item_Quantity">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Id" Type="Int32" />
                        <asp:Parameter Name="original_Item_Id" Type="String" />
                        <asp:Parameter Name="original_Item_Name" Type="String" />
                        <asp:Parameter Name="original_Item_Price" Type="Decimal" />
                        <asp:Parameter Name="original_Item_Quantity" Type="Int32" />
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
                        <asp:Parameter Name="original_Item_Id" Type="String" />
                        <asp:Parameter Name="original_Item_Name" Type="String" />
                        <asp:Parameter Name="original_Item_Price" Type="Decimal" />
                        <asp:Parameter Name="original_Item_Quantity" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>

            </p>
        </div>
    </form>
</body>
</html>
