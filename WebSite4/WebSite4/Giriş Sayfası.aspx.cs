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

public partial class Giriş_Sayfası : System.Web.UI.Page
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
                cmd.CommandText = "INSERT INTO olustursorgula(Sistem,Birim,UrunAdi,kartno,serino,arizatipi,yapilanislem,degparcvepoz,sondurum,gidistarihi,sehir,projeadi,resim) VALUES(@Sistem,@Birim,@UrunAdi,@kartno,@serino,@arizatipi,@yapilanislem,@degparcvepoz,@sondurum,@gidistarihi,@sehir,@projeadi,@resim)";
                cmd.Parameters.AddWithValue("@Sistem", sistem.Text);
                cmd.Parameters.AddWithValue("@Birim", birim.Text);
                cmd.Parameters.AddWithValue("@UrunAdi", ürünad.Text);
                cmd.Parameters.AddWithValue("@kartno", kartno.Text);
                cmd.Parameters.AddWithValue("@serino", serino.Text);
                cmd.Parameters.AddWithValue("@arizatipi", arızatipi.Text);
                cmd.Parameters.AddWithValue("@yapilanislem", yapılanislem.Text);
                cmd.Parameters.AddWithValue("@degparcvepoz", degisparca.Text);
                cmd.Parameters.AddWithValue("@sondurum", sondurum.Text);
                cmd.Parameters.AddWithValue("@gidistarihi", giristarihi.Text);
                cmd.Parameters.AddWithValue("@sehir", sehir.Text);
                cmd.Parameters.AddWithValue("@projeadi", projeadi.Text);
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
        cmd.CommandText = "select * from olustursorgula ORDER BY idd DESC";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
        da.Fill(dt);
        gridview1.DataSource = dt;
        gridview1.DataBind();
        cn.Close();
    }

    protected void gridview1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {

    }

    protected void gridview1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int id = int.Parse(gridview1.DataKeys[e.RowIndex].Value.ToString());
        DeleteProduct(id);
        disp_data();
    }

    protected void gridview1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gridview1.EditIndex = e.NewEditIndex;
        disp_data();
    }

    protected void gridview1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int idd = int.Parse(gridview1.DataKeys[e.RowIndex].Value.ToString());
        TextBox txt1 = (TextBox)gridview1.Rows[e.RowIndex].FindControl("TextBox1");
        TextBox txt2 = (TextBox)gridview1.Rows[e.RowIndex].FindControl("TextBox2");
        TextBox txt3 = (TextBox)gridview1.Rows[e.RowIndex].FindControl("TextBox3");
        TextBox txt4 = (TextBox)gridview1.Rows[e.RowIndex].FindControl("TextBox4");
        TextBox txt5 = (TextBox)gridview1.Rows[e.RowIndex].FindControl("TextBox5");
        TextBox txt6 = (TextBox)gridview1.Rows[e.RowIndex].FindControl("TextBox6");
        TextBox txt7 = (TextBox)gridview1.Rows[e.RowIndex].FindControl("TextBox7");
        TextBox txt8 = (TextBox)gridview1.Rows[e.RowIndex].FindControl("TextBox8");
        DropDownList DropDownList1 = (DropDownList)gridview1.Rows[e.RowIndex].FindControl("DropDownList1");
        TextBox txt10 = (TextBox)gridview1.Rows[e.RowIndex].FindControl("TextBox10");
        TextBox txt11 = (TextBox)gridview1.Rows[e.RowIndex].FindControl("TextBox11");
        TextBox txt12 = (TextBox)gridview1.Rows[e.RowIndex].FindControl("TextBox12");
        FileUpload fileupload1 = (FileUpload)gridview1.Rows[e.RowIndex].FindControl("FileUpload1");
        string str = fileupload1.FileName;
        fileupload1.PostedFile.SaveAs(Server.MapPath(".") + "//Resimler//" + str);
        string path = "~//Resimler//" + str.ToString();

        UpdateProduct(idd ,txt1.Text, txt2.Text, txt3.Text, txt4.Text, txt5.Text, txt6.Text, txt7.Text, txt8.Text, DropDownList1.Text, txt10.Text, txt11.Text, txt12.Text, path);
        gridview1.EditIndex = -1;
        disp_data();
    }

    protected void gridview1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gridview1.EditIndex = -1;
        disp_data();
    }

    private void UpdateProduct(int idd,string sistem, string birim, string ürünad, string kartno, string serino, string arızatipi, string yapilanislem, string degparcvepoz, string sondurum, string gidistarihi, string sehir, string projeadi, string resim)
    {
        using (MySqlConnection cn = new MySqlConnection("Server=localhost;Database=mydb;Uid=root;Password=123456; CharSet=UTF8; Allow User Variables=true"))
        {
            string query = "UPDATE olustursorgula SET Sistem = '" + sistem + "', Birim = '" + birim + "', UrunAdi = '" + ürünad + "', kartno = '" + kartno + "', serino = '" + serino + "', arizatipi = '" + arızatipi + "', yapilanislem = '" + yapilanislem + "', degparcvepoz = '" + degparcvepoz + "', sondurum = '" + sondurum + "', gidistarihi = '" + gidistarihi + "', sehir = '" + sehir + "', projeadi = '" + projeadi + "', resim = '" + resim + "' WHERE idd = '" + idd + "'";
            MySqlCommand cmd = new MySqlCommand(query, cn);
            cn.Open();
            cmd.ExecuteNonQuery();
        }
    }
    private void DeleteProduct(int idd)
    {
        using (MySqlConnection cn = new MySqlConnection("Server=localhost;Database=mydb;Uid=root;Password=123456; CharSet=UTF8; Allow User Variables=true"))
        {
            string query = "DELETE from olustursorgula WHERE idd = " + idd + "";
            MySqlCommand cmd = new MySqlCommand(query, cn);
            cn.Open();
            cmd.ExecuteNonQuery();
        }
    }

    protected void gridview1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        gridview1.PageIndex = e.NewSelectedIndex;
        disp_data();
    }

    protected void gridview1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gridview1.PageIndex = e.NewPageIndex;
        disp_data();
    }
}