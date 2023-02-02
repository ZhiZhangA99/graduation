<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddKaoQin.aspx.cs" Inherits="UserManger_AddKaoQin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>考勤打卡系统</title>
    <link rel="stylesheet" href="css/common.css"type="text/css">
</head>
<body>
    <form id="form1" runat="server">
    <div>

<table cellspacing="1" cellpadding="5"   align="center" style="width: 99%">
<tr bgcolor=#cccccc><td><b>
    考勤管理</td></tr>
<tr bgcolor=#ffffff><td align="left">
    <table id="Table1" align="center" border="0" cellpadding="5" cellspacing="0" width="100%">
        <tr>
            <td style="width: 129px">
                <font face="宋体">上班考勤：</font></td>
            <td colspan="3">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="上班" /></td>
        </tr>
        <tr style="color: #000000; font-family: 宋体">
            <td style="width: 129px">
                <font face="宋体">下班考勤：</font></td>
            <td colspan="3" style="color: #696969; font-family: Times New Roman">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="下班" /></td>
        </tr>
        <tr>
            <td   colspan="4" style="height: 27px">
                【先上班考勤后下班考勤哦】</td>
        </tr>
    </table>
</td></tr>
<tr bgcolor=#eeeeee><td style="height: 24px">
    <input id="Hidden1" runat="server" type="hidden" />
    <input id="Hidden2" runat="server" type="hidden" />&nbsp; <a href=# target=_blank><font color=blue></font></a></table></div>
    </form>
    
</body>
</html>
