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

public partial class User_Addqingjia : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["adminid"] == null)
        {
            Alert.AlertAndRedirect("您还没有登陆", "Login.aspx");
        }
        else
        {
            Hidden1.Value = DateTime.Now.Month.ToString();
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlHelper data = new SqlHelper();
        data.RunSql("insert into Qingjia(Username,Titles,Addtime,Content,EndTime,UserId,Type,YueFen)values('" + Session["admin"].ToString() + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + Session["adminid"].ToString() + "','" + DropDownList1.SelectedValue + "','" + Hidden1.Value + "') ");
        Alert.AlertAndRedirect("添加成功", "Addqingjia.aspx");

    }
}
