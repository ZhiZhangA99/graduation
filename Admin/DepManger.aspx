<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DepManger.aspx.cs" Inherits="Admin_DepManger" %>

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
                部门名称：<asp:TextBox ID="txtname" runat="server" Width="216px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="*"></asp:RequiredFieldValidator>
                部门职责：<asp:TextBox ID="TextBox1" runat="server" Width="144px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                    runat="server" ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
                联系方式：<asp:TextBox ID="TextBox2" runat="server" Width="159px"></asp:TextBox>
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添加部门" />
            </td>
        </tr>  
        <tr>
            <td align="center" bgcolor="#ffffff" style="height: 30px">
                部门名称：<asp:TextBox ID="TextBox3" runat="server" Width="216px"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="查询" CausesValidation="False" /></td>
        </tr>
        <tr>
            <td align="center" bgcolor="#ffffff" style="height: 30px">
                <asp:GridView ID="GvInfo" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    BackColor="White" CellPadding="5" DataKeyNames="BuMenId" OnPageIndexChanging="GvInfo_PageIndexChanging"
                    OnRowDataBound="GvInfo_RowDataBound" PageSize="12" Width="100%">
                    <PagerSettings FirstPageText="首页" LastPageText="尾页" Mode="NextPreviousFirstLast"
                        NextPageText="下一页" PageButtonCount="12" PreviousPageText="上一页" />
                    <RowStyle HorizontalAlign="Left" />
                    <Columns>
                        <asp:TemplateField HeaderText="部门信息">
                            <ItemTemplate>
                               <asp:Label ID="BuMenName" runat="server" Width="124px"><%# Eval("BuMenName") %></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Width="80px" />
                        </asp:TemplateField>
                     
                        <asp:TemplateField HeaderText="部门职责">
                            <ItemTemplate>
                               <asp:Label ID="ZhiZe" runat="server" Width="124px"><%# Eval("ZhiZe")%></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Width="80px" />
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="联系方式">
                            <ItemTemplate>
                               <asp:Label ID="DianHua" runat="server" Width="124px"><%# Eval("DianHua")%></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Width="80px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="修改">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "ModifyDepInfo.aspx?id="+Eval("BuMenId") %>'
                                    Text="修改"></asp:HyperLink>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Width="40px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="选择">
                            <EditItemTemplate>
                                <asp:CheckBox ID="CheckBox1" runat="server" />
                            </EditItemTemplate>
                            <HeaderTemplate>
                                选择
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:CheckBox ID="chkSelect" runat="server" />
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Width="40px" />
                        </asp:TemplateField>
                    </Columns>
                    <PagerTemplate>
                        <table border="0" width="100%">
                            <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButtonFirstPage" runat="server" CommandArgument="First" CommandName="Page"
                                        Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != 0 %>">首页 </asp:LinkButton>
                                    <asp:LinkButton ID="LinkButtonPreviousPage" runat="server" CommandArgument="Prev"
                                        CommandName="Page" Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != 0 %>">上一页 </asp:LinkButton>
                                    <asp:LinkButton ID="LinkButtonNextPage" runat="server" CommandArgument="Next" CommandName="Page"
                                        Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>">下一页 </asp:LinkButton>
                                    <asp:LinkButton ID="LinkButtonLastPage" runat="server" CommandArgument="Last" CommandName="Page"
                                        Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>">尾页 </asp:LinkButton>
                                    共
                                    <asp:Label ID="LabelPageCount" runat="server" Text=" <%# ((GridView)Container.NamingContainer).PageCount %>"> </asp:Label>页
                                    第
                                    <asp:Label ID="Label2" runat="server" Text=" <%# ((GridView)Container.NamingContainer).PageIndex + 1 %>"> </asp:Label>页
                                </td>
                                <td align="right" width="20%">
                                </td>
                            </tr>
                        </table>
                    </PagerTemplate>
                    <PagerStyle BackColor="#F6F6F6" HorizontalAlign="Left" />
                    <HeaderStyle BackColor="#F6F6F6" />
                </asp:GridView>
                <asp:Button ID="btnSelectAll" runat="server" OnClick="btnSelectAll_Click" Text="全选" CausesValidation="False" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnDel" runat="server" OnClick="btnDel_Click" OnClientClick="javascript:return confirm('确定删除么？');"
                    Text="删除" CausesValidation="False" />
                &nbsp;
            </td>
        </tr>
    
    </table>
</td></tr>
 </table></div>
    </form>
    
</body>
</html>
