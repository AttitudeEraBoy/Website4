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

public partial class SisOlus : System.Web.UI.Page
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

    public void disp_data()
    {
        cn.Open();
        cmd.Connection = cn;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from sistemekle ORDER BY idx DESC";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
        da.Fill(dt);
        gridview1.DataSource = dt;
        gridview1.DataBind();
        cn.Close();
    }

    protected void gridview1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int idx = int.Parse(gridview1.DataKeys[e.RowIndex].Value.ToString());
        TextBox txt1 = (TextBox)gridview1.Rows[e.RowIndex].FindControl("TextBox1");
        TextBox txt2 = (TextBox)gridview1.Rows[e.RowIndex].FindControl("TextBox2");
        TextBox txt3 = (TextBox)gridview1.Rows[e.RowIndex].FindControl("TextBox3");

        UpdateProduct(idx, txt1.Text, txt2.Text, txt3.Text);
        gridview1.EditIndex = -1;
        disp_data();
    }

    protected void gridview1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int idx = int.Parse(gridview1.DataKeys[e.RowIndex].Value.ToString());
        DeleteProduct(idx);
        disp_data();
    }

    protected void gridview1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gridview1.EditIndex = e.NewEditIndex;
        disp_data();
    }

    protected void gridview1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gridview1.EditIndex = -1;
        disp_data();
    }

    protected void gridview1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
            gridview1.PageIndex = e.NewPageIndex;
            disp_data();
    }

    protected void ekle_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.Connection = cn;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "INSERT INTO sistemekle(Sistem,Birim,UrunAdi) VALUES(@Sistem,@Birim,@UrunAdi)";
        cmd.Parameters.AddWithValue("@Sistem", sistem.Text);
        cmd.Parameters.AddWithValue("@Birim", birim.Text);
        cmd.Parameters.AddWithValue("@UrunAdi", ürünad.Text);
        cmd.ExecuteNonQuery();
        cn.Close();
        disp_data();

    }

    private void UpdateProduct(int idx, string sistem, string birim, string ürünad)
    {
        using (MySqlConnection cn = new MySqlConnection("Server=localhost;Database=mydb;Uid=root;Password=123456; CharSet=UTF8; Allow User Variables=true"))
        {
            string query = "UPDATE sistemekle SET Sistem = '" + sistem + "', Birim = '" + birim + "', UrunAdi = '" + ürünad + "' WHERE idx = '" + idx + "'";
            MySqlCommand cmd = new MySqlCommand(query, cn);
            cn.Open();
            cmd.ExecuteNonQuery();
        }
    }
    private void DeleteProduct(int idx)
    {
        using (MySqlConnection cn = new MySqlConnection("Server=localhost;Database=mydb;Uid=root;Password=123456; CharSet=UTF8; Allow User Variables=true"))
        {
            string query = "DELETE from sistemekle WHERE idx = " + idx + "";
            MySqlCommand cmd = new MySqlCommand(query, cn);
            cn.Open();
            cmd.ExecuteNonQuery();
        }
    }
}