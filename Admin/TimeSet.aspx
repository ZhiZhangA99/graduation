<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TimeSet.aspx.cs" Inherits="AdminManger_TimeSet" %>

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
<tr bgcolor=#cccccc><td><center><b>
    考勤时间设置</td></tr>
<tr bgcolor=#ffffff><td>
    <table align="center" bgcolor="#d5d4d4" border="0" cellpadding="0" cellspacing="1"
        style="width: 100%">
        <tr>
            <td align="left" colspan="4" style="width: 102px; height: 28px; background-color: #ffffff">
                上班时间：</td>
            <td align="left" colspan="1" style="width: 905px; height: 28px; background-color: #ffffff">
                <asp:TextBox ID="TextBox1" runat="server" Width="69px"></asp:TextBox>如8点填写数字8</td>
        </tr>
        <tr style="color: #000000">
            <td align="left" colspan="4" style="width: 102px; height: 33px; background-color: #ffffff">
                下班时间： &nbsp;</td>
            <td align="left" colspan="1" style="width: 905px; height: 33px; background-color: #ffffff">
                <asp:TextBox ID="TextBox2" runat="server" Width="69px"></asp:TextBox>如12点填写数字12</td>
        </tr>
        <tr>
            <td align="center" colspan="5" style="height: 25px; background-color: #ffffff">
                <asp:Button ID="Button1" runat="server" Text="设置" OnClick="Button1_Click" />&nbsp;<asp:Label
                    ID="LabelWarningMessage" runat="server"></asp:Label>请按24小时时间填写设置</td>
        </tr>
    </table>
</td></tr>
<tr bgcolor=#eeeeee><td>

<a href=# target=_blank><font color=blue></font></a>
 </table></div>
    </form>
    
</body>
</html>
