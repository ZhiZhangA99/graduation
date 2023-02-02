<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyXiuJia.aspx.cs" Inherits="UserManger_MyXiuJia" %>

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
<tr bgcolor=#cccccc><td><center><b>我的休假信息<asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
</td></tr>
<tr bgcolor=#ffffff><td>
    <table border="0" cellpadding="0" cellspacing="0" class="ShopInfo" width="100%">
        <tr>
            <td align="center" bgcolor="#ffffff">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    BackColor="White" CellPadding="5" DataKeyNames="id" OnPageIndexChanging="GridView1_PageIndexChanging"
                    OnRowDataBound="GridView1_RowDataBound" PageSize="12" Width="100%">
                    <PagerSettings FirstPageText="首页" LastPageText="尾页" Mode="NextPreviousFirstLast"
                        NextPageText="下一页" PageButtonCount="12" PreviousPageText="上一页" />
                    <RowStyle HorizontalAlign="Left" />
                    <Columns>
                        <asp:TemplateField HeaderText="姓名">
                            <ItemStyle HorizontalAlign="Left" Width="60px" />
                            <ItemTemplate>
                                <asp:Label ID="username" runat="server" Text='<%# Bind("username") %>' Width="92px"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                       
                        <asp:TemplateField HeaderText="休假天数">
                            <ItemStyle HorizontalAlign="Left" Width="80px" />
                            <ItemTemplate>
                                <asp:Label ID="TianShu" runat="server" Text='<%# Bind("TianShu") %>' Width="74px"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        
                          <asp:TemplateField HeaderText="月份">
                            <ItemStyle HorizontalAlign="Left" Width="80px" />
                            <ItemTemplate>
                                <asp:Label ID="YueFen" runat="server" Text='<%# Bind("YueFen") %>' Width="74px"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="添加时间">
                            <ItemStyle HorizontalAlign="Left" Width="110px" />
                            <ItemTemplate>
                                <asp:Label ID="AddTime" runat="server" Text='<%# Bind("AddTime") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="查看">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "ModifyXiuJia.aspx?id="+Eval("id") %>'
                                    Text="查看" Width="96px"></asp:HyperLink>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" Width="80px" />
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
                &nbsp;</td>
        </tr>
    </table>
</td></tr>
<tr bgcolor=#eeeeee><td style="height: 25px" align="center">
    &nbsp;<asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label><a href=# target=_blank><font color=blue></font></a></table></div>
    </form>
    
</body>
</html>
