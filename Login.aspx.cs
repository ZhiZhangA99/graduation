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
public partial class Login : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();

    Alert js = new Alert();
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           

        }

    }
   
    private void chkUser()
    {
        if (Name.Value == "" && Password.Value == "")
        {
            Alert.AlertAndRedirect("没有输入账号和密码！", "Login.aspx");


        }
        else
        {
            dr = data.GetDataReader("select * from  [UserInfo] where UserName='" + Name.Value.Trim() + "'and Pwd='" + Password.Value.Trim() + "'  ");
            if (dr.Read())
            {

                Session["admin"] = dr["UserTruename"].ToString();
                Session["DepId"] = dr["DepId"].ToString();


                Session["adminid"] = dr["Userid"].ToString();
                Session["DepName"] = dr["bumen"].ToString();
                Response.Redirect("UserManger/index.html");

            }
            else
            {
                Alert.AlertAndRedirect("账号或者密码不对请重新登录！", "Login.aspx");
            }
        }
    }

    private void chkADmin()
    {
        if (Name.Value == "" && Password.Value == "")
        {
            Alert.AlertAndRedirect("没有输入账号和密码！", "Login.aspx");


        }
        else
        {
            dr = data.GetDataReader("select * from  Admin where Aname='" + Name.Value.Trim() + "'and Apwd='" + Password.Value.Trim() + "'  ");
            if (dr.Read())
            {
                Session["adminid"] = dr["id"].ToString();
                Session["admin"] = dr["Aname"].ToString();

                Response.Redirect("Admin/index.html");

            }
            else
            {
                Alert.AlertAndRedirect("账号或者密码不对请重新登录！", "Login.aspx");
            }
        }
    }
    
    protected void BUTTON1_ServerClick(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.Text == "管理员")
        {
            chkADmin();


        }
        if (DropDownList1.SelectedItem.Text == "普通员工")
        {
            chkUser();
        }
    }
}
