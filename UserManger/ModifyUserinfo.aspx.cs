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
public partial class Admin_ModifyUserinfo : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
        
            SqlHelper data = new SqlHelper();

            int id = int.Parse(Session["adminid"].ToString());
            SqlDataReader dr = data.GetDataReader("select * from UserInfo where Userid=" + id);
            dr.Read();  //dr.Read()是一个方法，如果dr读到了信息返回True；否则返回False
            txtName.Text = dr["UserName"].ToString();
            TextBox2.Text = dr["UserTruename"].ToString();
            TextBox3.Text = dr["Birthday"].ToString();
            TextBox4.Text = dr["AddRess"].ToString();
            TextBox5.Text = dr["Emal"].ToString();
            TextBox6.Text = dr["Mobile"].ToString();
            TextBox7.Text = dr["EntryTime"].ToString();
            TextBox1.Text = dr["bumen"].ToString();
            TextBox8.Text = dr["job"].ToString();
            TextBox9.Text = dr["roule"].ToString();
            TextBox10.Text = dr["Education"].ToString();
            TextBox11.Text = dr["XingBie"].ToString();
            pic.Text = dr["Photo"].ToString();
            Image2.ImageUrl ="../FileUpload/" +dr["Photo"].ToString();
        }
    } 
    protected void Button2_Click(object sender, EventArgs e)
    {
        string res;//变量
        upload up = new upload(); //上传方法
        res = up.Up(file1, "../FileUpload/"); //上传文件
        this.Label1.Visible = true;//显示Label2
        this.Label1.Text = up.Resup[Convert.ToInt32(res)]; //Label2显示上传后传回来的值
        this.pic.Text = up.s; //txtpic显示上传后传回来的值
        Image2.ImageUrl = "../FileUpload/" + pic.Text; 
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int id = int.Parse(Session["adminid"].ToString());
        SqlHelper update = new SqlHelper();

     
        update.RunSql("update  UserInfo set Mobile='" + TextBox6.Text + "',Photo='" + pic.Text + "' ,AddRess='" + TextBox4.Text + "',Emal='" + TextBox5.Text + "'  where Userid=" + id);

        Alert.AlertAndRedirect("修改成功", "ModifyUserinfo.aspx");

    }
}
