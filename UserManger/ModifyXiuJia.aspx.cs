﻿using System;
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

public partial class Admin_ModifyXiuJia : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int id = int.Parse(Request.QueryString["id"].ToString());
            SqlDataReader dr = data.GetDataReader("select * from XiuJia where id=" + id);
            dr.Read();
            username.Text = dr["username"].ToString();

            TextBox3.Text = dr["TianShu"].ToString();
            TextBox1.Text = dr["Remark"].ToString();

        }
    }
   
}
