<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="OnePhp.NetTechExam.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
    <title></title>
</head>
    <body>
    <form id="form1" runat="server">
        <div>
            <%--<asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>--%>
            <asp:Label ID="hiddenId" runat="server" Text="Label" Visible="False" ></asp:Label>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id"  SortExpression="Id" />
                    <asp:BoundField DataField="EventName" HeaderText="EventName" SortExpression="EventName" />
                    <asp:BoundField DataField="EventDate" HeaderText="EventDate" SortExpression="EventDate" />
                    <asp:BoundField DataField="user" HeaderText="user" SortExpression="user" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="linkView" runat="server" OnClick="linkView_Click">Edit</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <%--<asp:CommandField ButtonType="Link"  runat="server"  HeaderText="Edit" ShowEditButton="true" />--%>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NetEventsConnectionString1 %>" DeleteCommand="DELETE FROM [Events] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Events] ([EventName], [EventDate], [user]) VALUES (@EventName, @EventDate, @user)" ProviderName="<%$ ConnectionStrings:NetEventsConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [EventName], [EventDate], [user] FROM [Events] where [User] = @user" UpdateCommand="UPDATE [Events] SET [EventName] = @EventName, [EventDate] = @EventDate, [user] = @user WHERE [Id] = @Id">
                <SelectParameters>
                    <asp:ControlParameter Name="user" ControlID="hiddenId" PropertyName="Text" ConvertEmptyStringToNull = "false" />
                </SelectParameters>
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="EventName" Type="String" />
                    <asp:Parameter Name="EventDate" Type="DateTime" />
                    <asp:Parameter Name="user" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="EventName" Type="String" />
                    <asp:Parameter Name="EventDate" Type="DateTime" />
                    <asp:Parameter Name="user" Type="Int32" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

            <asp:Calendar ID="selectedDate" runat="server"></asp:Calendar>
            <asp:TextBox ID="eventName" runat="server"></asp:TextBox>
            <asp:Button ID="addEvent" runat="server" Text="Add" OnClick="addEvent_Click" />
            
            <%--<asp:TextBox ID="updateEvent" runat="server"></asp:TextBox>--%>
        </div>
    </form>
    <table style="width: 100%;" id="listTable">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</body>
</html>

