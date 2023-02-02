using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class UserManger_AddNotice : System.Web.UI.Page
{
    SqlHelper insert = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        insert.RunSql("insert into [Notice](name,ds,addtime)values('" + TextBox1.Text + "','" + TextBox5.Text + "','" + TextBox2.Text + "') ");
        Alert.AlertAndRedirect("添加成功", "NoticeManger.aspx");
    }
}
