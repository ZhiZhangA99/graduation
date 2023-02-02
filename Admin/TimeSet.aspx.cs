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
public partial class AdminManger_TimeSet : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            SqlDataReader dr = data.GetDataReader("select * from TimeSet ");
            dr.Read();
            TextBox1.Text = dr["Time1"].ToString();
            TextBox2.Text = dr["Time2"].ToString();
           

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (int.Parse(TextBox1.Text) >= 24 || int.Parse(TextBox1.Text) <= 0)
            {
                Alert.AlertAndRedirect("上班时间不正确", "TimeSet.aspx");
                return;
            }

            if (int.Parse(TextBox2.Text) >= 24 || int.Parse(TextBox2.Text) <= 0)
            {
                Alert.AlertAndRedirect("下班时间不正确", "TimeSet.aspx");
                return;
            }
            else
            {
                data.RunSql("update TimeSet set Time1='" + TextBox1.Text + "', Time2='" + TextBox2.Text + "'");
                Alert.AlertAndRedirect("设置成功", "TimeSet.aspx");
            }
        }
        catch
        {
            Alert.AlertAndRedirect("请设置正确的时间格式！", "TimeSet.aspx");
 
        }
     
    }
}
