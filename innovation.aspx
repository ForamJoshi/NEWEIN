<%@ Page Language="C#" AutoEventWireup="true" CodeFile="innovation.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="styles/site.css">
    <link rel="stylesheet" type="text/css" href="styles/site.css">
<style type="text/css">
<!--
#Layer1 {
	position:absolute;
	width:376px;
	height:391px;
	z-index:1;
	left: 15px;
	top: 305px;
}
#Layer2 {
	position:absolute;
	width:866px;
	height:376px;
	z-index:2;
	left: 415px;
	top: 305px;
}
-->
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div id="header">
    <div id="divsnow">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" Text="Label"></asp:Label>
        </div>
    <div class="clsheader">
		<!--<img src="images/m.jpg" style="position:relative;margin:auto;z-index:10;" />-->
		<!--<img id="imgbin" src="images/binary.png" style="position:relative;top:-250px;display:block;z-index:2;" />-->
	</div>        
</div>
<table width="899" height="103" id="tblcontainer">
	<tr>
		<td height="44">
			<div id="divmenu">
				<ul>
					<li>
						<a href="home.aspx" class="menuLink">           Home          </a>
                    </li>
					<li>
						<a href="innovation.aspx" class="menuLink">         Innovations          </a>
                    </li>
					<li>
						<a href="feedback.aspx" class="menuLink">          Feedback          </a>
                    </li>
					<li>
						<a href="contact.aspx" class="menuLink">          Contact Us          </a>
                    </li>
					<li>
						<a href="index.aspx" class="menuLink" style='border-right:none;'>          LogOut          </a>
                    </li>
                    					
                </ul>
			</div>
      </td>
    </tr>
	<tr>
	  <td height="51"><p><br />
	    </p>
	    <p></p>
      </td>
  </tr>
</table>


 
	<div id="Layer1" style="border-right:solid #FFFFFF">
	  
	  <br /><font size="5" color="#FFFF00">Select Category and then formula to calculate</font>
        <p>&nbsp;        </p>
        <p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Font-Size="Medium" Height="44px" Width="195px">
            <asp:ListItem Selected="True" Value="0">------Choose Category------</asp:ListItem>
            <asp:ListItem Value="1">Newtonian Mechanics</asp:ListItem>
              <asp:ListItem Value="2">Electricity &amp; Magnetism</asp:ListItem>
              <asp:ListItem Value="3">Fluid Mechanics</asp:ListItem>
              <asp:ListItem Value="4">Thermal Physics</asp:ListItem>
              <asp:ListItem Value="5">Waves &amp; Optics</asp:ListItem>
        </asp:DropDownList>
        &nbsp;</p>
        <p> &nbsp;</p>
        <p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" Font-Size="Medium" Height="44px" Width="195px" >
            <asp:ListItem Selected="True" Value="0">------Choose Formula------</asp:ListItem>

        </asp:DropDownList>
          
          
          
                </p>
        <p> 
            <asp:Button ID="Button1" runat="server" Text="Show" OnClick="Button1_Click1" />
          
          
          
                </p>
        </div>
        </div>

	<div id="Layer2" style="border:solid #FFFFFF">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        </div>
</form>
	<script type="text/javascript" src="snow.js"></script>

    </div>
    </form>
</body>
</html>
