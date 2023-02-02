<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NoticeInfo.aspx.cs" Inherits="UserManger_NoticeInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>考勤打卡系统</title>
         <link rel="stylesheet" href="css/common.css"type="text/css">
</head>
<body>
    <form id="form1" runat="server">
    <div>

<table cellspacing="1" cellpadding="5" bgcolor="#999999" align="center" style="width: 99%">
<tr bgcolor=#cccccc><td><center><b>
    信息内容</td></tr>
<tr bgcolor=#ffffff><td>
    <table border="0" cellpadding="0" cellspacing="0" class="ShopInfo" width="100%">
        <tr>
            <td align="center" bgcolor="#ffffff" style="height: 30px">
                &nbsp;<table align="center" border="0" cellpadding="3" cellspacing="1" class="" width="99%">
                    <tr>
                        <td style="width: 90px; height: 24px">
                            通知名称：</td>
                        <td align="left" style="width: 232px; height: 24px">
                            <asp:TextBox ID="TextBox1" runat="server" Width="631px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 90px; height: 24px">
                            通知添加时间：</td>
                        <td align="left" style="width: 232px; height: 24px">
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="left_title_1" style="width: 88px; height: 119px">
                            通知内容：</td>
                        <td align="left" style="width: 621px; height: 119px">
                            <asp:TextBox ID="txtds" runat="server" Height="115px" TextMode="MultiLine" Width="710px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="center" class="left_title_1" colspan="2" style="height: 30px">
                            </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</td></tr>
<tr bgcolor=#eeeeee><td>

<a href=# target=_blank><font color=blue></font></a>
 </table></div>
    </form>
    
</body>
</html>
