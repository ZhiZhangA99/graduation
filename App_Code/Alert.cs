using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
 
/// Alert 的摘要说明
/// </ZhaoPin>
public class Alert
{
    public Alert()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
    public void Alertjs(string AlertStr)
    {
        string Alert = "";
        Alert = "<script language='javascript'>alert('" + AlertStr + "')</script>";

        HttpContext.Current.Response.Write(Alert);

    }
     
    /// 弹出提示并跳转
    /// </ZhaoPin>
    /// <param name="Message">提示信息</param>
    /// <param name="RedirectUrl">跳转Url</param>
    public static void AlertAndRedirect(string Message, string RedirectUrl)
    {
        string js = "";
        js = "<script language='javascript'>alert('{0}');window.location.replace('{1}')</script>";
        HttpContext.Current.Response.Write(string.Format(js, Message, RedirectUrl));


    }  
    /// 弹出新页面
    /// </ZhaoPin>
    /// <param name="url">页面地址</param>
    /// <param name="width">宽度</param>
    /// <param name="heigth">高度</param>
    /// <param name="top">上边位置</param>
    /// <param name="left">左边位置</param>
    public static void AlertNewWebForm(string url, int width, int heigth, int top, int left)
    {
        string js = @"<Script language='JavaScript'>window.open('" + url + @"','','height=" + heigth + ",width=" + width + ",top=" + top + ",left=" + left + ",location=no,menubar=no,resizable=yes,scrollbars=yes,status=yes,titlebar=no,toolbar=no,directories=no');</Script>";

        HttpContext.Current.Response.Write(js);
    }
}
