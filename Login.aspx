<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>考勤管理系统</title>
    <link rel="stylesheet" href="css/bootstrap.css">
 <link rel="stylesheet" href="css/bootstrap.css">
<link href="iconfont/style.css" type="text/css" rel="stylesheet">
<style>
	body{color:#fff; font-family:"微软雅黑"; font-size:14px;}
	.wrap1{position:absolute; top:0; right:0; bottom:0; left:0; margin:auto }/*把整个屏幕真正撑开--而且能自己实现居中*/
	.main_content{background:url(images/main_bg.png) repeat; margin-left:auto; margin-right:auto; text-align:left; float:none; border-radius:8px;}
	.form-group{position:relative;}
	.login_btn{display:block; background:#3872f6; color:#fff; font-size:15px; width:100%; line-height:50px;   border:none; }
	.login_input{width:100%; border:1px solid #3872f6;    }
	.icon_font{position:absolute; bottom:15px; left:10px; font-size:18px; color:#3872f6;}
	.font16{font-size:16px;}
	.mg-t20{margin-top:20px;}
	@media (min-width:200px){.pd-xs-20{padding:20px;}}
	@media (min-width:768px){.pd-sm-50{padding:50px;}}
	#grad {
	  background: -webkit-linear-gradient(#4990c1, #52a3d2, #6186a3); /* Safari 5.1 - 6.0 */
	  background: -o-linear-gradient(#4990c1, #52a3d2, #6186a3); /* Opera 11.1 - 12.0 */
	  background: -moz-linear-gradient(#4990c1, #52a3d2, #6186a3); /* Firefox 3.6 - 15 */
	  background: linear-gradient(#4990c1, #52a3d2, #6186a3); /* 标准的语法 */
	}
</style>
</head>
<body style="background:url(images/bg.jpg) no-repeat;">
    <form id="form1" runat="server">
    <div class="container wrap1" style="height:450px;">
            
            <div class="col-sm-8 col-md-5 center-auto pd-sm-50 pd-xs-20 main_content">
                <p class="text-center font16">考勤管理系统</p>
              
                    <div class="form-group mg-t20">
                       
                        <input type=text  class="login_input" id="Name" placeholder="请输入用户名" style="height: 30px" runat="server" />
                    </div>
                    <div class="form-group mg-t20">
                      
                        <input type="password" class="login_input" id="Password" placeholder="请输入密码" style="height: 30px" runat="server" />
                    </div>
                    <div class="checkbox mg-b25">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                           <asp:ListItem>管理员</asp:ListItem>
                        <asp:ListItem>普通员工</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <button   class="login_btn" id="BUTTON1" onserverclick="BUTTON1_ServerClick" runat="server">登 录</button>
              
        </div><!--row end-->
    </div>
    </form>
</body>
</html>
