using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using MySql.Data;
using System.IO;

public partial class Default_1_ : System.Web.UI.Page
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
        cmd.CommandText = "select * from olustursorgula where Sistem = @Sistem";

        if (sistem.Text.Trim().Length > 0 && arızatipi.Text.Trim().Length > 0)
        {
            cmd.CommandText += " and arizatipi = @arizatipi";
        }
        if (yapılanislem.Text.Trim().Length > 0)
        {
            cmd.CommandText += " and yapilanislem LIKE @yapilanislem";
        }
        if (giristarihi.Text.Trim().Length > 0)
        {
            cmd.CommandText += " and gidistarihi = @gidistarihi";
        }
        if (sehir.Text.Trim().Length > 0)
        {
            cmd.CommandText += " and sehir = @sehir";
        }
        if (projeadi.Text.Trim().Length > 0)
        {
            cmd.CommandText += " and projeadi =  @projeadi";
        }

        cmd.CommandText += " ORDER BY idd DESC";

        cmd.Parameters.AddWithValue("@Sistem", sistem.Text);
        cmd.Parameters.AddWithValue("@arizatipi", arızatipi.Text);
        cmd.Parameters.AddWithValue("@yapilanislem", "%" + yapılanislem.Text + "%" );
        cmd.Parameters.AddWithValue("@gidistarihi", giristarihi.Text);
        cmd.Parameters.AddWithValue("@sehir", sehir.Text);
        cmd.Parameters.AddWithValue("@projeadi", projeadi.Text);

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
        cmd.CommandText = "select * from olustursorgula ORDER BY idd DESC";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
        da.Fill(dt);
        gridview1.DataSource = dt;
        gridview1.DataBind();
        cn.Close();
    }


    protected void gridview1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gridview1.PageIndex = e.NewPageIndex;
        disp_data();
    }
}