<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_main.aspx.cs" Inherits="Admin_admin_main" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>考勤打卡系统</title>
 
    <LINK href="css/common.css"type=text/css rel=stylesheet>
   
</head>
<body>
    <form id="form1" runat="server">
    <div>

<table cellspacing="1" cellpadding="5" bgcolor="#999999" align="center" style="width: 100%">
<tr bgcolor=#7FFFD4><td><center><b>
    欢迎用户：<asp:Label ID="Label3" runat="server" ForeColor="#33CCFF"></asp:Label>使用考勤打卡系统</td></tr>
<tr bgcolor=#ffffff><td>
    <table align="center" bgcolor="#d5d4d4" border="0" cellpadding="0" cellspacing="1"
        style="width: 100%">
        <tr>
            <td align="center" colspan="5" style="height: 25px; background-color: #ffffff">
                <table class="table table-hover text-center" style="font-size: 14px">
                    <volist id="vo" name="list">
</volist>
                    <tr>
                        <td colspan="8" style="height: 18px">
                            当前角色：<asp:Label ID="Label1" runat="server" ForeColor="#33CCFF"></asp:Label>当前用户：
                            <asp:Label ID="Label2" runat="server" ForeColor="#33CCFF"></asp:Label></td>
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
