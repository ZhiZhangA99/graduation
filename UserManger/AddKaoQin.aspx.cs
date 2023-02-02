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
public partial class UserManger_AddKaoQin : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlDataReader drt = data.GetDataReader("select * from TimeSet ");
            drt.Read();
            Hidden1.Value = drt["Time1"].ToString();
            Hidden2.Value = drt["Time2"].ToString();

        
            
            SqlDataReader dr = data.GetDataReader("select * from KaoQin where UserId='" + Session["adminid"].ToString() + "' and Date1='" + DateTime.Now.Date.ToShortDateString() + "'");
            if (dr.Read())
            {
                Button1.Visible = false;
            }
            SqlDataReader dr1 = data.GetDataReader("select * from KaoQin where UserId='" + Session["adminid"].ToString() + "' and Date2='" + DateTime.Now.Date.ToShortDateString() + "'");
            if (dr1.Read())
            {
                Button2.Visible = false;
            }
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string time1 = DateTime.Now.Hour.ToString() + ":" + DateTime.Now.Minute.ToString();
        string chuqinDS = "";


        string dangqian = DateTime.Now.ToString("HH:mm:ss");


        int xx =int.Parse( dangqian.Substring(0, 2));

        if (xx >= int.Parse(Hidden1.Value))
        {
            chuqinDS = "上班迟到";

            string sql = "insert into KaoQin(UserId,Date1,Time1,chuqin1DS,FullName)values('" + Session["adminid"].ToString() + "','" + DateTime.Now.Date.ToShortDateString() + "','" + time1 + "','" + chuqinDS + "','" + Session["admin"].ToString()+ "')";
            data.RunSql(sql);
        }
        else
        {
            chuqinDS = "正常上班";

            string sql = "insert into KaoQin(UserId,Date1,Time1,chuqin1DS,FullName)values('" + Session["adminid"].ToString() + "','" + DateTime.Now.Date.ToShortDateString() + "','" + time1 + "','" + chuqinDS + "','" + Session["admin"].ToString() + "')";
            data.RunSql(sql);
        }
        Alert.AlertAndRedirect("考勤成功！", "MyKaoQinInfo.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        string Time2 = DateTime.Now.Hour.ToString() + ":" + DateTime.Now.Minute.ToString();
        string chuqinDS = "";


        string dangqian = DateTime.Now.ToString("HH:mm:ss");


        int xx = int.Parse(dangqian.Substring(0, 2));
        if (xx < int.Parse(Hidden2.Value))
        {
            chuqinDS = "下班早退";

            string sql = "update  KaoQin set Date2='" + DateTime.Now.Date.ToShortDateString() + "',Time2='" + Time2 + "',chuqin2DS='" + chuqinDS + "' where UserId='" + Session["adminid"].ToString() + "'and Date1='" + DateTime.Now.Date.ToShortDateString() + "' ";
            data.RunSql(sql);
        }
        else
        {
            chuqinDS = "正常下班";

            string sql = "update  KaoQin set Date2='" + DateTime.Now.Date.ToShortDateString() + "',Time2='" + Time2 + "',chuqin2DS='" + chuqinDS + "' where UserId='" + Session["adminid"].ToString() + "'and Date1='" + DateTime.Now.Date.ToShortDateString() + "' ";
            data.RunSql(sql);
        }
       
        Alert.AlertAndRedirect("考勤成功！", "MyKaoQinInfo.aspx");
    }
}
