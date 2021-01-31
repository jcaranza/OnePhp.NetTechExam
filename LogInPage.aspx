<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogInPage.aspx.cs" Inherits="OnePhp.NetTechExam.LogInPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="UserName" runat="server" Height="41px" Width="173px"></asp:TextBox>
        <asp:Button ID="LogIn" runat="server" Text="LogIn" OnClick="LogIn_Click" Height="34px" Width="71px"  />
        </div>
    </form>
</body>
</html>
