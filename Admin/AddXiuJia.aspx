<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddXiuJia.aspx.cs" Inherits="Admin_AddXiuJia" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>考勤打卡系统</title>
       <link rel="stylesheet" href="css/common.css"type="text/css">
       <script language="javascript" type="text/javascript" src="../js/Calendar.js"></script>
  
</head>
<body>
    <form id="form1" runat="server">
    <div>

<table cellspacing="1" cellpadding="5"   align="center" style="width: 99%">
<tr bgcolor=#cccccc><td><center><b>
    添加休假信息</td></tr>
<tr bgcolor=#ffffff><td>
    <table align="center" border="0" cellpadding="3" cellspacing="1" style="width: 100%">
        <tr>
            <td class="left_title_1" style="width: 122px; height: 30px">
                选择员工：</td>
            <td align="left" style="width: 692px; height: 30px">
                <asp:DropDownList ID="DropDownList2" runat="server" Width="167px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                </asp:DropDownList></td>
        </tr>
        <tr style="color: #000000">
            <td class="left_title_1" style="width: 122px; height: 30px">
                休假天数：</td>
            <td align="left" style="width: 692px; height: 30px">
                <asp:TextBox ID="TextBox3" runat="server" MaxLength="200"
                    Width="138px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="color: #000000">
            <td class="left_title_1" style="width: 122px; height: 30px">
                月份：</td>
            <td align="left" style="width: 692px; height: 30px">
                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True">
                    <asp:ListItem Selected="True" Value="0">--选择月份--</asp:ListItem>
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
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td class="left_title_1" style="width: 122px; height: 30px">
                内容：</td>
            <td align="left" style="width: 692px; height: 30px">
                <asp:TextBox ID="TextBox1" runat="server" Height="133px" TextMode="MultiLine" Width="100%"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="height: 30px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确认添加" />
                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                <input id="Hidden1" runat="server" type="hidden" /></td>
        </tr>
    </table>
</td></tr>
<tr bgcolor=#eeeeee><td>

<a href=# target=_blank><font color=blue></font></a>
 </table></div>
    </form>
    
</body>
</html>
