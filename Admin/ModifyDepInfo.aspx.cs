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
public partial class Admin_ModifyDepInfo : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
           

            int id = int.Parse(Request.QueryString["id"].ToString());
            SqlDataReader dr = data.GetDataReader("select * from BuMen where BuMenId=" + id);
            dr.Read();

            txtname.Text = dr["BuMenName"].ToString();
            TextBox1.Text = dr["ZhiZe"].ToString();
 


            TextBox2.Text = dr["DianHua"].ToString();

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int id = int.Parse(Request.QueryString["id"].ToString());
        data.RunSql("update BuMen set BuMenName='" + txtname.Text + "',ZhiZe='" + TextBox1.Text + "',DianHua='"+TextBox2.Text+"' where BuMenId=" + id);
        Alert.AlertAndRedirect("修改成功", "DepManger.aspx");
    }
}
