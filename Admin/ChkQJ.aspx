<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChkQJ.aspx.cs" Inherits="AdminManger_ChkQJ" %>

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
    请假审核</td></tr>
<tr bgcolor=#ffffff><td align="left">
    <table id="Table1" align="center" border="0" cellpadding="5" cellspacing="0" width="100%">
        <tr>
            <td style="width: 129px">
                <font face="宋体">请假审核：</font></td>
            <td colspan="3">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>通过</asp:ListItem>
                    <asp:ListItem>不通过</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
    </table>
</td></tr>
<tr bgcolor=#eeeeee><td style="height: 24px" align="center">
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确认" />
</table></div>
    </form>
    
</body>
</html>
