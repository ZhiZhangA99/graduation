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
public partial class Admin_AddXiuJia : System.Web.UI.Page
{
    SqlHelper insert = new SqlHelper();
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BinderT();
        }
    }
    private void BinderT()
    {
        DropDownList2.DataSource = data.GetDataReader("select * from UserInfo ");
        DropDownList2.DataTextField = "UserTruename";
        DropDownList2.DataValueField = "Userid";
        DropDownList2.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql = "insert into XiuJia(userId,username,Remark,TianShu,DepId,YueFen)values('" + DropDownList2.SelectedValue + "','" + DropDownList2.SelectedItem.Text + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + Hidden1.Value + "','" + DropDownList3.SelectedValue + "') ";

        insert.RunSql(sql);
        Label1.Text = "";

        Alert.AlertAndRedirect("添加成功", "XiuJiaManger.aspx");

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label1.Text = "";
        SqlDataReader dr = data.GetDataReader("select * from UserInfo where Userid=" + DropDownList2.SelectedValue);
        dr.Read();

        Hidden1.Value = dr["DepId"].ToString();
    }
}
