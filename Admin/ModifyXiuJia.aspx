<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModifyXiuJia.aspx.cs" Inherits="Admin_ModifyXiuJia" %>

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
    修改休假信息</td></tr>
<tr bgcolor=#ffffff><td>
    <table align="center" border="0" cellpadding="3" cellspacing="1" style="width: 100%">
        <tr>
            <td class="left_title_1" style="width: 88px; height: 30px">
                员工姓名：</td>
            <td align="left" style="width: 621px; height: 30px">
                <asp:Label ID="username" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td class="left_title_1" style="width: 88px; height: 30px">
                休假天数：</td>
            <td align="left" style="width: 621px; height: 30px">
                <asp:TextBox ID="TextBox3" runat="server" MaxLength="200"  
                    Width="77px"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="left_title_1" style="width: 88px; height: 30px">
                休假内容：</td>
            <td align="left" style="width: 621px; height: 30px">
                <asp:TextBox ID="TextBox1" runat="server" Height="221px" TextMode="MultiLine" Width="637px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="height: 30px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确认修改" />
                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label></td>
        </tr>
    </table>
</td></tr>
<tr bgcolor=#eeeeee><td>

<a href=# target=_blank><font color=blue></font></a>
 </table></div>
    </form>
    
</body>
</html>
