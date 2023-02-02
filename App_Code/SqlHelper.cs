using System;
using System.Collections.Generic;
using System.Text;
using System.Configuration;
using System.Collections;
using System.Data.SqlClient;
using System.Data;

 
/// SqlHelper 的摘要说明
/// </ZhaoPin>
public class SqlHelper
{

    public static readonly string connstring = ConfigurationManager.ConnectionStrings["sqlcon"].ConnectionString;
    private static Hashtable parmCache = Hashtable.Synchronized(new Hashtable());
    private SqlConnection con;  //SqlConnection 对象表示与 SQL Server 数据源的一个唯一的会话。
    private SqlCommand cmd;     //表示要对 SQL Server 数据库执行的一个 Transact-SQL 语句或存储过程。执行语句

    private SqlDataAdapter sda;   //表示用于填充 DataSet 和更新 SQL Server 数据库的一组数据命令和一个数据库连接。
    private SqlDataReader sdr;  
    private DataSet ds;
    private DataView dv;  //DataView表示用于排序、筛选、搜索、编辑和导航的 DataTable 的可绑定数据的自定义视图。

    public static SqlConnection getConnection()//定义成静态的
    {
        return new SqlConnection( ConfigurationManager.ConnectionStrings["sqlcon"].ConnectionString);
    }
     
    /// 打开数据库连接
    /// </ZhaoPin>
    public void OpenDataBase()
    {
        con = new SqlConnection(connstring);
        con.Open();
    }
     
    /// 关闭数据库连接
    /// </ZhaoPin>
    public void CloseDataBase()
    {

        con.Close();
        con.Dispose();

    }
     
    /// 返回DataSet数据集
    /// </ZhaoPin>
    /// <param name="SqlStr">数据库查询字符串</param>
    /// <returns>dataset</returns>
    public DataSet GetDs(string SqlStr, string TableName)
    {
        OpenDataBase();
        sda = new SqlDataAdapter(SqlStr, con);
        ds = new DataSet();
        sda.Fill(ds, TableName);
        CloseDataBase();
        return ds;
    }
    public DataView GetDv(string SqlStr)
    {
        OpenDataBase();
        sda = new SqlDataAdapter(SqlStr, con);
        ds = new DataSet();
        sda.Fill(ds);
        dv = ds.Tables[0].DefaultView;
        CloseDataBase();
        return dv;

    }
     
    /// 返回Datareader对象
    /// </ZhaoPin>
    /// <param name="Sqlstr">查询字符串</param>
    /// <returns>返回值</returns>
    public SqlDataReader GetDataReader(string Sqlstr)
    {
        OpenDataBase();
        cmd = new SqlCommand(Sqlstr, con);
        sdr = cmd.ExecuteReader(System.Data.CommandBehavior.CloseConnection);

        return sdr;


    }

     
    /// 执行Sql语句方法没有返回值
    /// </ZhaoPin>
    /// <param name="SqlStr">传入的查询参数</param>
    public void RunSql(string SqlStr)
    {
        OpenDataBase();
        cmd = new SqlCommand(SqlStr, con);
        cmd.ExecuteNonQuery();
        CloseDataBase();
    }
     
    /// 返回查询结果的首行首列
    /// </ZhaoPin>
    /// <param name="SqlStr">查询字符串</param>
    /// <returns>返回结果</returns>
    public string ReturnSql(string SqlStr)
    {
        OpenDataBase();
        string ReturnSql = "";
        try
        {
            cmd = new SqlCommand(SqlStr, con);
            ReturnSql = cmd.ExecuteScalar().ToString();
        }
        catch { }
        CloseDataBase();
        return ReturnSql;
    }

}
