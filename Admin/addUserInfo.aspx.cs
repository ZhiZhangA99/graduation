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
public partial class Admin_addUserInfo : System.Web.UI.Page
{
    SqlHelper insert = new SqlHelper();
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Binderbumen();
            Binderjob();
          

        
        }


    }

     
    /// 绑定部门
    /// </ZhaoPin>
    private void Binderbumen()
    {

        DropDownList2.DataSource = data.GetDataReader("select * from BuMen ");
        DropDownList2.DataTextField = "BuMenName";
        DropDownList2.DataValueField = "BuMenId";
        DropDownList2.DataBind();


    }
     
    /// 绑定职位
    /// </ZhaoPin>
    private void Binderjob()
    {

        DropDownList1.DataSource = data.GetDataReader("select * from Job ");
        DropDownList1.DataTextField = "jobname";
        DropDownList1.DataValueField = "JobId";
        DropDownList1.DataBind();


    }
     
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataReader dr = data.GetDataReader("select * from  UserInfo where  UserName='" + txtName.Text + "'    ");
        if (dr.Read())
        {
            LabelWarningMessage.Text = "账号不能重复";
        }
        else
        {


            insert.RunSql("insert into UserInfo(UserName,Pwd,UserTruename,bumen,job,roule,Birthday,Education,Emal,Mobile,EntryTime,DepId,XingBie,AddRess,Photo,ZhuangTai,jobID)values('" + txtName.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList2.SelectedItem.Text + "','" + DropDownList1.SelectedItem.Text + "','普通员工','" + TextBox3.Text + "','" + DropDownList4.SelectedItem.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + DropDownList2.SelectedValue + "','" + DropDownList5.SelectedValue + "','" + TextBox4.Text + "','" + pic.Text + "','" + DropDownList3.SelectedValue + "','" + DropDownList1.SelectedValue+ "') ");
            Alert.AlertAndRedirect("添加成功", "UserInfoManger.aspx");
            LabelWarningMessage.Text = "";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string res;
        upload up = new upload();
        res = up.Up(file1, "../FileUpload/");
        this.Label1.Visible = true;
        this.Label1.Text = up.Resup[Convert.ToInt32(res)];
        this.pic.Text = up.s;
        Image2.ImageUrl = "../FileUpload/" + pic.Text;
    }
}
