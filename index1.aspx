<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index1.aspx.cs" Inherits="index1" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>ASP.net Captcha</title>
    <style type="text/css">
        .txtInput
        {
            width: 250px;
            height: 28px;
            padding: 3px;
        }
        div
        {
            margin: 5px;
        }
        .validator
        {
            color: Red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <fieldset>
            <h3>
                How to use Catpcha</h3>
            <div>
                <img src="GenerateCaptcha.ashx" />
                <asp:Button ID="btnReGenerate" runat="server" 
                    Text="Click to Regenerate Captcha" OnClick="btnReGenerate_Click" />
            </div>
            <div>
                <asp:TextBox ID="txtCaptchaText" runat="server" 
                    CssClass="txtInput"></asp:TextBox>
                <br />
                <asp:TextBox ID="txt1" runat="server" 
                    CssClass="txtInput"></asp:TextBox>
                <br />
            </div>
            <div>
                <asp:Button ID="btnSubmitCaptcha" runat="server" 
                    Text="Click to Submit Form" OnClick="btnSubmitCaptcha_Click" />
            </div>
            <div>
                <asp:Label ID="lblStatus" runat="server" Font-Bold="true"></asp:Label>
            </div>
        </fieldset>
    </div>
    </form>
</body>
</html>
