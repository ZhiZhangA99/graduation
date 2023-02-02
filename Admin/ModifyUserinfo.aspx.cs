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
            Binderbumen();
            Binderjob();
            BinderRoulette();
            SqlHelper data = new SqlHelper();

            int id = int.Parse(Request.QueryString["id"].ToString());
            SqlDataReader dr = data.GetDataReader("select * from UserInfo where Userid=" + id);
            dr.Read();
            txtName.Text = dr["UserName"].ToString();
            TextBox2.Text = dr["UserTruename"].ToString();
            TextBox3.Text = dr["Birthday"].ToString();
            TextBox4.Text = dr["AddRess"].ToString();
            TextBox5.Text = dr["Emal"].ToString();
            TextBox6.Text = dr["Mobile"].ToString();
            TextBox7.Text = dr["EntryTime"].ToString();
            DropDownList2.Items.FindByText(dr["bumen"].ToString()).Selected = true;//选项Text  
            DropDownList1.Items.FindByText(dr["job"].ToString()).Selected = true;//选项Text  
          
            DropDownList4.Items.FindByText(dr["Education"].ToString()).Selected = true;//选项Text  
            DropDownList2.Items.FindByValue(dr["DepId"].ToString()).Selected = true;//选项Text  

            DropDownList5.Items.FindByValue(dr["XingBie"].ToString()).Selected = true;//选项Text  
            
            pic.Text = dr["Photo"].ToString();
            Image2.ImageUrl ="../FileUpload/" +dr["Photo"].ToString();
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
     
    /// 绑定角色
    /// </ZhaoPin>
    private void BinderRoulette()
    {

   
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        int id = int.Parse(Request.QueryString["id"].ToString());
        SqlHelper update = new SqlHelper();


        update.RunSql("update  UserInfo set UserName='" + txtName.Text + "',UserTruename='" + TextBox2.Text + "',bumen='" + DropDownList2.SelectedItem.Text + "',job='" + DropDownList1.SelectedItem.Text + "',jobID='"+DropDownList1.SelectedValue+"',Birthday='" + TextBox3.Text + "',Education='" + DropDownList4.SelectedValue + "',Emal='" + TextBox5.Text + "',Mobile='" + TextBox6.Text + "', EntryTime='" + TextBox7.Text + "' ,DepId='" + DropDownList2.SelectedValue + "' ,Photo='" + pic.Text + "' ,AddRess='" + TextBox4.Text + "',XingBie='" + DropDownList5.SelectedValue + "'  where Userid=" + id);
      
        Alert.AlertAndRedirect("修改成功", "UserInfoManger.aspx");

    }
}
