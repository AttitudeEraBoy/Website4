using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using MySql.Data;
public partial class Default3 : System.Web.UI.Page
{
    MySqlConnection cn = new MySqlConnection("Server=localhost;Database=mydb;Uid=root;Password=123456; CharSet=UTF8; Allow User Variables=true");
    MySqlCommand cmd = new MySqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            disp_data();
        }
    }

    protected void goruntule_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.Connection = cn;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from revizesorgula where Sistem = @Sistem";

        if (sistem.Text.Trim().Length > 0 && birim.Text.Trim().Length > 0)
        {
            cmd.CommandText += " and Birim = @Birim";
        }
        if (ürünad.Text.Trim().Length > 0)
        {
            cmd.CommandText += " and UrunAdi = @UrunAdi";
        }
        if (kartno.Text.Trim().Length > 0)
        {
            cmd.CommandText += " and kartno = @kartno";
        }
        if (yapilanrevize.Text.Trim().Length > 0)
        {
            cmd.CommandText += " and yapilanrevize LIKE @yapilanrevize";
        }
        if (revizenedeni.Text.Trim().Length > 0)
        {
            cmd.CommandText += " and revizenedeni LIKE @revizenedeni";
        }
        
        cmd.CommandText += " ORDER BY id1 DESC";

        cmd.Parameters.AddWithValue("@Sistem", sistem.Text);
        cmd.Parameters.AddWithValue("@Birim", birim.Text);
        cmd.Parameters.AddWithValue("@UrunAdi", ürünad.Text);
        cmd.Parameters.AddWithValue("@kartno", kartno.Text);
        cmd.Parameters.AddWithValue("@yapilanrevize", "%" + yapilanrevize.Text + "%");
        cmd.Parameters.AddWithValue("@revizenedeni", "%" + revizenedeni.Text + "%");

        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
        da.Fill(dt);
        gridview1.DataSource = dt;
        gridview1.DataBind();
        cn.Close();
    }
    public void disp_data()
    {
        cn.Open();
        cmd.Connection = cn;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from revizesorgula ORDER BY id1 DESC";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
        da.Fill(dt);
        gridview1.DataSource = dt;
        gridview1.DataBind();
        cn.Close();
    }
    

    protected void gridview1_PageIndexChanging1(object sender, GridViewPageEventArgs e)
    {
        gridview1.PageIndex = e.NewPageIndex;
        disp_data();
    }
}