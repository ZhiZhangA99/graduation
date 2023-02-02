<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Addqingjia.aspx.cs" Inherits="User_Addqingjia" %>

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
    添加请假信息</td></tr>
<tr bgcolor=#ffffff><td>
    <table align="center" border="0" cellpadding="0" cellspacing="1"
        style="width: 100%">
        <tr>
                                <td style="width: 100px">
                                    标题</td>
                                <td align="left" colspan="2">
                                    <asp:TextBox ID="TextBox1" runat="server" Width="307px"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 100px; height: 26px">
                                    离开时间</td>
                                <td align="left" style="height: 26px" colspan="2">
                                    <asp:TextBox ID="TextBox2" runat="server" onclick="fPopCalendar(event,this,this)" onfocus="this.select()" ></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 100px; height: 26px">
                                    回归时间</td>
                                <td align="left" style="height: 26px" colspan="2">
                                    <asp:TextBox ID="TextBox4" runat="server" onclick="fPopCalendar(event,this,this)" onfocus="this.select()" ></asp:TextBox></td>
                            </tr>
        <tr>
            <td style="width: 100px; height: 26px">
                类别：</td>
            <td align="left" style="height: 26px" colspan="2">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="67px">
                    <asp:ListItem>病假</asp:ListItem>
                    <asp:ListItem>事假</asp:ListItem>
                </asp:DropDownList>
                <input id="Hidden1" runat="server" type="hidden" /></td>
        </tr>
                            <tr>
                                <td style="width: 100px">
                                    备注</td>
                                <td align="left" colspan="2">
                                    <asp:TextBox ID="TextBox3" runat="server" Height="163px" TextMode="MultiLine" Width="682px"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td colspan="3" align="center">
                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添加" /></td>
                            </tr>
    </table>
</td></tr>
<tr bgcolor=#eeeeee><td>

<a href=# target=_blank><font color=blue></font></a>
 </table></div>
    </form>
    
</body>
</html>
