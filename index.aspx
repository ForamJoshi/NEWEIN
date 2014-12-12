<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function f() {
            if (document.getElementById('<%=TextBox6.ClientID%>').value == '') {
                alert("All fields are required..");
            }
            else {
                if (document.getElementById('<%=TextBox6.ClientID%>').value.length <= 6) {
                    alert("Password must be of 6 digits");
                    form1.TextBox6.value = "";

                }
            }
        }
        function f1() {
            if (document.getElementById('<%=TextBox7.ClientID%>').value == '') {
                alert("All fields are required..");
            }
            else {
                if (document.getElementById('<%=TextBox6.ClientID%>').value != document.getElementById('<%=TextBox7.ClientID%>')) {
                    alert("password & confirm password does not match");
                }
            }
        }
        function f2() {
            if (document.getElementById('<%=TextBox3.ClientID%>').value == '') {
                alert("All fields are required..");
            }
            else {
                if (form1.TextBox3.value != "") {
                    var el = document.getElementById('<%=TextBox3.ClientID%>');
                    var re = /^[A-z]+$/;
                    if (!re.test(el.value)) {
                        alert("Please enter character only");
                        form1.TextBox3.value = "";
                    }

                }
            }
        }
        function f3() {
            if (document.getElementById('<%=TextBox4.ClientID%>').value == "") {
                alert("All fields are required..");
            }
            else {
                if (form1.TextBox4.value != "") {
                    var el = document.getElementById('<%=TextBox4.ClientID%>');
                    var re = /^[A-z]+$/;
                    if (!re.test(el.value)) {
                        alert("Please enter character only");
                        form1.TextBox4.value = "";
                    }

                }
            }
        }
        function f4() {
            if (document.getElementById('<%=TextBox5.ClientID%>').value == "") {
                alert("All fields are required..");
            }
            else {
                if (form1.TextBox5.value != "") {
                    var x = document.forms["form1"]['<%=TextBox5.ClientID%>'].value;
                    var atpos = x.indexOf("@");
                    var dotpos = x.lastIndexOf(".");
                    if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= x.length) {
                        alert("your email is not valid,please enter a valid email");
                        form1.TextBox5.value = "";
                    }
                }
            }
        }
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
    <!--
#Layer1 {
	position:absolute;
	width:588px;
	height:151px;
	z-index:1;
	left: 767px;
	top: 325px;
}
#Layer2 {
	position:absolute;
	width:626px;
	height:597px;
	z-index:2;
	left: 240px;
	top: 498px;
}
-->
</style>
</head>
<body>
    
    <div id="container_wrapper1">
  <div id="container_wrapper2">
    <div id="container">
     
      
     <!-- <div id="content">
-->
		<form id="form1" runat="server" name="form1">
	    <p>
	      <script src="jquery-1.3.2.min.js"></script>
	        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Yellow"></asp:Label>
	    </p>
        <div id="Layer1">
          <p><font size="4" color="#FFFFFF">Email or Phone </font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
		  <font size="4" color="#FFFFFF">Password</font></p>
          <p>
              <asp:TextBox ID="TextBox1" runat="server" placeholder="Email or Phone" Height="35px" Width="194px"></asp:TextBox>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" placeholder="Password" Height="35px" Width="195px" TextMode="Password"></asp:TextBox>
              &nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
	          <asp:Button ID="Button1" runat="server" Height="40px" Text="Log In " CssClass="f1" OnClick="Button1_Click" />
&nbsp;</p>                                                                                     
		  <a href="index1.aspx">Forgot your Password?</a>
          <p>&nbsp; 
              <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Yellow"></asp:Label>
            </p>
          <p>&nbsp;  </p>
      </div>
       <div id="Layer2">
	     <p><font size="7" color="#FFFF00">Sign Up</font></p>
	     <p><font size="4" color="#FFFF66">It's free and always will be.</font> </p>
		 <br />
		 <p>
             <asp:TextBox ID="TextBox3" runat="server" placeholder="First Name" onblur="f2()" Height="35px" Width="194px"></asp:TextBox>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
       
          
             <asp:TextBox ID="TextBox4" runat="server" placeholder="Last Name" onblur="f3()" Height="35px" Width="194px"></asp:TextBox>
           </p>
			<br />
			<p>
			    <asp:TextBox ID="TextBox5" runat="server" placeholder="Your Email" onblur="f4()" Height="35px" Width="194px"></asp:TextBox>
           </p>
			</br>
			<p>
			    <asp:TextBox ID="TextBox6" runat="server" placeholder="Password" onBlur="f()" Height="35px" Width="194px" TextMode="Password"></asp:TextBox>
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" Text="(password is must be of 6 or more than 6)"></asp:Label>
           </p>
			<br />
			<p>
			    <asp:TextBox ID="TextBox7" runat="server" placeholder="Confirm Password" onblur="f1()" Height="35px" Width="194px" TextMode="Password"></asp:TextBox>
           </p>
			<br />
			<p>
			<font size="4" color="#FFFF66">Birthday</font></p>
			<p>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Selected="True" Value="0">Month</asp:ListItem>
                    <asp:ListItem Value="0">Jan</asp:ListItem>
                    <asp:ListItem Value="2">Feb</asp:ListItem>
                    <asp:ListItem Value="3">Mar</asp:ListItem>
                    <asp:ListItem Value="4">Apr</asp:ListItem>
                    <asp:ListItem Value="5">May</asp:ListItem>
                    <asp:ListItem Value="6">Jun</asp:ListItem>
                    <asp:ListItem Value="7">Jul</asp:ListItem>
                    <asp:ListItem Value="8">Aug</asp:ListItem>
                    <asp:ListItem Value="9">Sep</asp:ListItem>
                    <asp:ListItem Value="10">Oct</asp:ListItem>
                    <asp:ListItem Value="11">Nov</asp:ListItem>
                    <asp:ListItem Value="12">Dec</asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			    <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem Selected="True" Value="0">Day</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>21</asp:ListItem>
                    <asp:ListItem>22</asp:ListItem>
                    <asp:ListItem>23</asp:ListItem>
                    <asp:ListItem>24</asp:ListItem>
                    <asp:ListItem>25</asp:ListItem>
                    <asp:ListItem>26</asp:ListItem>
                    <asp:ListItem>27</asp:ListItem>
                    <asp:ListItem>28</asp:ListItem>
                    <asp:ListItem>29</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    <asp:ListItem>31</asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			    <asp:DropDownList ID="DropDownList3" runat="server">
                    <asp:ListItem Selected="True" Value="0">Year</asp:ListItem>
                    <asp:ListItem>2020</asp:ListItem>
                    <asp:ListItem>2019</asp:ListItem>
                    <asp:ListItem>2018</asp:ListItem>
                    <asp:ListItem>2017</asp:ListItem>
                    <asp:ListItem>2016</asp:ListItem>
                    <asp:ListItem>2015</asp:ListItem>
                    <asp:ListItem>2014</asp:ListItem>
                    <asp:ListItem>2013</asp:ListItem>
                    <asp:ListItem>2012</asp:ListItem>
                    <asp:ListItem>2011</asp:ListItem>
                    <asp:ListItem>2010</asp:ListItem>
                    <asp:ListItem>2009</asp:ListItem>
                    <asp:ListItem>2008</asp:ListItem>
                    <asp:ListItem>2007</asp:ListItem>
                    <asp:ListItem>2006</asp:ListItem>
                    <asp:ListItem>2005</asp:ListItem>
                    <asp:ListItem>2004</asp:ListItem>
                    <asp:ListItem>2003</asp:ListItem>
                    <asp:ListItem>2002</asp:ListItem>
                    <asp:ListItem>2001</asp:ListItem>
                    <asp:ListItem>2000</asp:ListItem>
                    <asp:ListItem>1999</asp:ListItem>
                    <asp:ListItem>1998</asp:ListItem>
                    <asp:ListItem>1997</asp:ListItem>
                    <asp:ListItem>1996</asp:ListItem>
                    <asp:ListItem>1995</asp:ListItem>
                    <asp:ListItem>1994</asp:ListItem>
                    <asp:ListItem>1993</asp:ListItem>
                    <asp:ListItem>1992</asp:ListItem>
                    <asp:ListItem>1991</asp:ListItem>
                    <asp:ListItem>1990</asp:ListItem>
                    <asp:ListItem>1989</asp:ListItem>
                    <asp:ListItem>1988</asp:ListItem>
                    <asp:ListItem>1987</asp:ListItem>
                    <asp:ListItem>1986</asp:ListItem>
                    <asp:ListItem>1985</asp:ListItem>
                    <asp:ListItem>1984</asp:ListItem>
                    <asp:ListItem>1983</asp:ListItem>
                    <asp:ListItem>1982</asp:ListItem>
                    <asp:ListItem>1981</asp:ListItem>
                    <asp:ListItem>1980</asp:ListItem>
                    <asp:ListItem>1979</asp:ListItem>
                    <asp:ListItem>1978</asp:ListItem>
                    <asp:ListItem>1977</asp:ListItem>
                    <asp:ListItem>1976</asp:ListItem>
                    <asp:ListItem>1975</asp:ListItem>
                    <asp:ListItem>1974</asp:ListItem>
                    <asp:ListItem>1973</asp:ListItem>
                    <asp:ListItem>1972</asp:ListItem>
                    <asp:ListItem>1971</asp:ListItem>
                    <asp:ListItem>1970</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
           </p>
<br />

			<div style="width: 71px; height: 29px">
			    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="16px" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" Width="255px" CssClass="r1" Font-Bold="True" Font-Size="Medium" ForeColor="#FFFF66">
                    <asp:ListItem Value="1">Female</asp:ListItem>
                    <asp:ListItem Value="2">Male</asp:ListItem>
                </asp:RadioButtonList>
</div>
			
		 <br />
			<p>
                &nbsp;</p>
           <p>
                &nbsp;</p>
           <p>
                <asp:Button ID="Button2" runat="server" Text="Join Us" class="f1" OnClick="Button2_Click" Height="38px" Width="79px"/>
           </p>
           <p>
                &nbsp;</p>

       </div>
   
   <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
	    <p>&nbsp;</p>
	    <p>&nbsp;</p>
	    <p>&nbsp;</p>
	    <p>&nbsp;</p>
	    <p>&nbsp;</p>
	    <p>&nbsp;</p>
	    <p>&nbsp;</p>
	    <p>&nbsp;</p>
	    <p>&nbsp;</p>
	    <p>&nbsp;</p>
	    <p>&nbsp;</p>
	    <p>&nbsp;</p>
	   
	  
    </div>
     <div id="footer"></div>
	 </form>
  </div>
</div>
</div>


    
</body>
</html>
