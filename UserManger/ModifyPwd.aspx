<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModifyPwd.aspx.cs" Inherits="Admin_ModifyPwd" %>

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
    修改登陆密码</td></tr>
<tr  ><td>
    <table align="center" bgcolor="#d5d4d4" border="0" cellpadding="0" cellspacing="1"
        style="width: 100%">
        <tr>
            <td align="left" style="width: 102px; height: 28px; background-color: #ffffff">
                原密码：</td>
            <td align="left" colspan="1" style="width: 905px; height: 28px; background-color: #ffffff">
                &nbsp;<asp:TextBox ID="txtpwd1" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtpwd1"
                    ErrorMessage="必填"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="color: #000000">
            <td align="left" style="width: 102px; height: 33px; background-color: #ffffff">
                新密码： &nbsp;</td>
            <td align="left" colspan="1" style="width: 905px; height: 33px; background-color: #ffffff">
                &nbsp;<asp:TextBox 
                    ID="txtpwd2" runat="server" TextMode="Password" Width="147px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtpwd2"
                    ErrorMessage="必填"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="color: #000000">
            <td align="left" style="width: 102px; height: 33px; background-color: #ffffff">
                再次输入新密码：</td>
            <td align="left" colspan="1" style="width: 905px; height: 33px; background-color: #ffffff">
                &nbsp;<asp:TextBox ID="txtpwd3" runat="server" TextMode="Password" Width="147px"></asp:TextBox>
                &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtpwd2" ControlToValidate="txtpwd3" ErrorMessage="两次输入的密码不同"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="height: 25px; background-color: #ffffff">
                <asp:Button ID="Button1" runat="server" Text="修改" OnClick="Button1_Click" />&nbsp;<asp:Label
                    ID="LabelWarningMessage" runat="server"></asp:Label></td>
        </tr>
    </table>
</td></tr>
<tr bgcolor=#eeeeee><td>

<a href=# target=_blank><font color=blue></font></a>
 </table></div>
    </form>
    
</body>
</html>
