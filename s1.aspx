 <%@ Page Language="C#" AutoEventWireup="true" CodeFile="s1.aspx.cs" Inherits="s1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="275px">
            <asp:ListItem Value="1">gujarat</asp:ListItem>
            <asp:ListItem Value="2">Bihar</asp:ListItem>
            <asp:ListItem Value="3">Rajsthan</asp:ListItem>
            <asp:ListItem Value="4">Panjab</asp:ListItem>
            <asp:ListItem Value="5">Delhi</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="275px">
        </asp:DropDownList>
    
    </div>
    </form>
</body>
</html>
