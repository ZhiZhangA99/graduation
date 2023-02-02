<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addUserInfo.aspx.cs" Inherits="Admin_addUserInfo" %>

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
    添加员工</td></tr>
<tr  ><td>
    <table id="Table1" border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td style="width: 90px; height: 24px">
                            账号：*</td>
                        <td align="left" style="width: 302px; height: 24px">
                            <asp:TextBox ID="txtName" runat="server" MaxLength="200" Width="163px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                                ErrorMessage="*"></asp:RequiredFieldValidator></td>
                    </tr>
        <tr>
            <td style="width: 90px; height: 24px">
                上传照片：</td>
            <td align="left" style="width: 302px; height: 24px">
                <asp:Image ID="Image2" runat="server" Width="118px" /><br />
                <asp:TextBox ID="pic" runat="server" CssClass="inputBox" ReadOnly="True" Width="72px"></asp:TextBox><input
                    id="file1" runat="server" class="inputBox" style="width: 159px" type="file" /><asp:Button
                        ID="Button2" runat="server" CausesValidation="False" CssClass="formbutton" Height="22px"
                        OnClick="Button2_Click" Text="上传图片"   /><asp:Label ID="Label1" runat="server"
                            Visible="False" Width="87px"></asp:Label>
            </td>
        </tr>
                    <tr>
                        <td style="width: 90px; height: 24px">
                            密码：</td>
                        <td align="left" style="width: 302px; height: 24px">
                            <asp:TextBox ID="TextBox1" runat="server" MaxLength="200" TextMode="Password" Width="163px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1"
                                ErrorMessage="*"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 90px; height: 23px">
                            姓名：</td>
                        <td align="left" style="width: 302px; height: 23px">
                            <asp:TextBox ID="TextBox2" runat="server" MaxLength="200" Width="163px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2"
                                ErrorMessage="*"></asp:RequiredFieldValidator></td>
                    </tr>
        <tr>
            <td style="width: 90px; height: 23px">
                性别：</td>
            <td align="left" style="width: 302px; height: 23px">
                <asp:DropDownList ID="DropDownList5" runat="server" Width="50px">
                    <asp:ListItem>男</asp:ListItem>
                    <asp:ListItem>女</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
                    <tr>
                        <td style="width: 90px; height: 23px">
                            出生日期：</td>
                        <td align="left" style="width: 302px; height: 23px">
                            <asp:TextBox ID="TextBox3" runat="server" MaxLength="200" Width="163px"  onclick="fPopCalendar(event,this,this)" onfocus="this.select()" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3"
                                ErrorMessage="*" Width="14px"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 90px; height: 23px">
                            学历：</td>
                        <td align="left" style="width: 302px; height: 23px"><asp:DropDownList ID="DropDownList4" runat="server" Width="149px">
                            <asp:ListItem>本科以下</asp:ListItem>
                            <asp:ListItem>本科</asp:ListItem>
                            <asp:ListItem>硕士及以上</asp:ListItem>
                        </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td style="width: 90px; height: 23px">
                            电子邮件：</td>
                        <td align="left" style="width: 302px; height: 23px">
                            <asp:TextBox ID="TextBox5" runat="server" MaxLength="200" Width="163px"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5"
                                ErrorMessage="格式错误" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 90px; height: 23px">
                            联系电话：</td>
                        <td align="left" style="width: 302px; height: 23px">
                            <asp:TextBox ID="TextBox6" runat="server" MaxLength="200" Width="163px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 90px; height: 23px">
                            入职时间：</td>
                        <td align="left" style="width: 302px; height: 23px">
                            <asp:TextBox ID="TextBox7" runat="server" MaxLength="200" Width="163px"  onclick="fPopCalendar(event,this,this)" onfocus="this.select()" ></asp:TextBox></td>
                    </tr>
        <tr>
            <td style="width: 90px; height: 23px">
                联系地址：</td>
            <td align="left" style="width: 302px; height: 23px">
                <asp:TextBox ID="TextBox4" runat="server" MaxLength="200" Width="542px"></asp:TextBox></td>
        </tr>
                    <tr>
                        <td style="width: 90px;">
                            所在部门：</td>
                        <td align="left" style="width: 302px;">
                            <asp:DropDownList ID="DropDownList2" runat="server" Width="149px">
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td style="width: 90px; height: 23px">
                            职位：</td>
                        <td align="left" style="width: 302px; height: 23px">
                            <asp:DropDownList ID="DropDownList1" runat="server" Width="232px">
                            </asp:DropDownList></td>
                    </tr>
        <tr>
            <td style="width: 90px; height: 23px">
                在职状态：</td>
            <td align="left" style="width: 302px; height: 23px">
                <asp:DropDownList ID="DropDownList3" runat="server" Width="122px">
                    <asp:ListItem>在职</asp:ListItem>
                    <asp:ListItem>离职</asp:ListItem>
                    <asp:ListItem>兼职</asp:ListItem>
                    <asp:ListItem>退休</asp:ListItem>
                    <asp:ListItem>其他</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
                    <tr>
                        <td align="center" colspan="3" style="height: 34px">
                            <hr />
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确认添加" /></td>
                    </tr>
                    <tr>
                        <td align="center" colspan="3" style="height: 15px">
                            <asp:Label ID="LabelWarningMessage" runat="server"></asp:Label></td>
                    </tr>
                </table>
</td></tr>
<tr bgcolor=#eeeeee><td style="height: 24px">

<a href=# target=_blank><font color=blue></font></a>
 </table></div>
    </form>
    
</body>
</html>
