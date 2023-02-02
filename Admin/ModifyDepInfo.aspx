<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModifyDepInfo.aspx.cs" Inherits="Admin_ModifyDepInfo" %>

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
    部门信息管理</td></tr>
<tr  ><td>
    <table border="0" cellpadding="0" cellspacing="0" class="ShopInfo" width="100%">
          <tr>
            <td align="center" bgcolor="#ffffff" style="height: 30px">
                部门名称：<asp:TextBox ID="txtname" runat="server" Width="143px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="*"></asp:RequiredFieldValidator>
                部门职责：<asp:TextBox ID="TextBox1" runat="server" Width="99px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
                联系方式：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="修改部门信息" />
            </td>
        </tr>  
    
    </table>
</td></tr>
 </table></div>
    </form>
    
</body>
</html>
