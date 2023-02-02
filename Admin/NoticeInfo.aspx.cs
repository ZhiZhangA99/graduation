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
using System.Data.SqlClient;
public partial class UserManger_NoticeInfo : System.Web.UI.Page
{
    Alert alert = new Alert();
    SqlHelper data = new SqlHelper();
    public string DownPath;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetInfo();
        }
    }
    private void GetInfo()
    {
        int id = int.Parse(Request.QueryString["id"].ToString());
        SqlDataReader dr;
        dr = data.GetDataReader("select * from  Notice where id=" + id);
        dr.Read();
        TextBox1.Text = dr["name"].ToString();
        TextBox2.Text = dr["addtime"].ToString();
        TextBox5.Text = dr["Ds"].ToString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int id = int.Parse(Request.QueryString["id"].ToString());
        data.RunSql("update   Notice set Name='" + TextBox1.Text + "',Ds='" + TextBox5.Text + "'   where id=" + id);

        Alert.AlertAndRedirect("修改成功！", "NoticeManger.aspx");
    }
}
