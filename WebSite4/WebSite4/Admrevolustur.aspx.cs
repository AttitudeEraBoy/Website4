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

public partial class Admrevolustur : System.Web.UI.Page
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

    private void Form1_Load(object sender, EventArgs e)
    {
        disp_data();
    }

    protected void ekle_Click(object sender, EventArgs e)
    {
        if (dokumanekleme.HasFile)
        {
            string fileextension = System.IO.Path.GetExtension(dokumanekleme.FileName);
            if (fileextension.ToLower() == ".jpg" || fileextension.ToLower() == ".png")
            {

                cn.Open();
                cmd.Connection = cn;
                cmd.CommandType = CommandType.Text;
                string str = dokumanekleme.FileName;
                dokumanekleme.PostedFile.SaveAs(Server.MapPath(".") + "//Resimler//" + str);
                string path = "~//Resimler//" + str.ToString();
                cmd.CommandText = "INSERT INTO revizesorgula(Sistem,Birim,UrunAdi,kartno,yapilanrevize,revizenedeni,resim) VALUES(@Sistem,@Birim,@UrunAdi,@kartno,@yapilanrevize,@revizenedeni,@resim)";
                cmd.Parameters.AddWithValue("@Sistem", sistem.Text);
                cmd.Parameters.AddWithValue("@Birim", birim.Text);
                cmd.Parameters.AddWithValue("@UrunAdi", ürünad.Text);
                cmd.Parameters.AddWithValue("@kartno", kartno.Text);
                cmd.Parameters.AddWithValue("@yapilanrevize", yapilanrevize.Text);
                cmd.Parameters.AddWithValue("@revizenedeni", revizenedeni.Text);
                cmd.Parameters.AddWithValue("@resim", path);
                cmd.ExecuteNonQuery();
                cn.Close();
                disp_data();
            }
        }
        else
        {

        }
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

    protected void gridview1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int id1 = int.Parse(gridview1.DataKeys[e.RowIndex].Value.ToString());
        DeleteProduct(id1);
        disp_data();
    }

    protected void gridview1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gridview1.EditIndex = e.NewEditIndex;
        disp_data();
    }

    protected void gridview1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int id1 = int.Parse(gridview1.DataKeys[e.RowIndex].Value.ToString());
        TextBox txt1 = (TextBox)gridview1.Rows[e.RowIndex].FindControl("TextBox1");
        TextBox txt2 = (TextBox)gridview1.Rows[e.RowIndex].FindControl("TextBox2");
        TextBox txt3 = (TextBox)gridview1.Rows[e.RowIndex].FindControl("TextBox3");
        TextBox txt4 = (TextBox)gridview1.Rows[e.RowIndex].FindControl("TextBox4");
        TextBox txt5 = (TextBox)gridview1.Rows[e.RowIndex].FindControl("TextBox5");
        TextBox txt6 = (TextBox)gridview1.Rows[e.RowIndex].FindControl("TextBox6");

        FileUpload fileupload1 = (FileUpload)gridview1.Rows[e.RowIndex].FindControl("FileUpload1");
        string str = fileupload1.FileName;
        fileupload1.PostedFile.SaveAs(Server.MapPath(".") + "//Resimler//" + str);
        string path = "~//Resimler//" + str.ToString();

        UpdateProduct(id1, txt1.Text, txt2.Text, txt3.Text, txt4.Text, txt5.Text, txt6.Text, path);
        gridview1.EditIndex = -1;
        disp_data();
    }

    protected void gridview1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gridview1.EditIndex = -1;
        disp_data();
    }

    private void UpdateProduct(int id1, string sistem, string birim, string ürünad, string kartno, string yapilanrevize, string revizenedeni, string resim)
    {
        using (MySqlConnection cn = new MySqlConnection("Server=localhost;Database=mydb;Uid=root;Password=123456; CharSet=UTF8; Allow User Variables=true"))
        {
            string query = "UPDATE revizesorgula SET Sistem = '" + sistem + "', Birim = '" + birim + "', UrunAdi = '" + ürünad + "', kartno = '" + kartno + "', yapilanrevize = '" + yapilanrevize + "' revizenedeni = '" + revizenedeni + "', resim = '" + resim + "' WHERE id1 = '" + id1 + "'";
            MySqlCommand cmd = new MySqlCommand(query, cn);
            cn.Open();
            cmd.ExecuteNonQuery();
        }
    }
    private void DeleteProduct(int id1)
    {
        using (MySqlConnection cn = new MySqlConnection("Server=localhost;Database=mydb;Uid=root;Password=123456; CharSet=UTF8; Allow User Variables=true"))
        {
            string query = "DELETE from revizesorgula WHERE id1 = " + id1 + "";
            MySqlCommand cmd = new MySqlCommand(query, cn);
            cn.Open();
            cmd.ExecuteNonQuery();
        }
    }


    protected void gridview1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gridview1.PageIndex = e.NewPageIndex;
        disp_data();
    }
    
}