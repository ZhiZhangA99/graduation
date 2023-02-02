<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModifyZhiWei.aspx.cs" Inherits="Admin_ModifyZhiWei" %>

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
   职位信息管理</td></tr>
<tr  ><td>
    <table border="0" cellpadding="0" cellspacing="0" class="ShopInfo" width="100%">
          <tr>
            <td align="center" bgcolor="#ffffff" style="height: 30px">
                            职位名称*<asp:TextBox ID="txtname" runat="server" Width="216px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtname" ErrorMessage="*"></asp:RequiredFieldValidator>
                基础工资：<asp:TextBox ID="TextBox1" runat="server" Width="216px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                    ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="修改职位信息" />
            </td>
        </tr>  
    
    </table>
</td></tr>
 </table></div>
    </form>
    
</body>
</html>
