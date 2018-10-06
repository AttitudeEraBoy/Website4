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

public partial class Ayarlar : System.Web.UI.Page
{
    MySqlConnection cn = new MySqlConnection("Server=localhost;Database=mydb;Uid=root;Password=123456; CharSet=UTF8; Allow User Variables=true");
    MySqlCommand cmd = new MySqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void degistir_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.Connection = cn;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select password from table1 where password = @password";
        cmd.Parameters.AddWithValue("@password",ilksifre.Text);
        MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
        DataTable dtbl = new DataTable();
        sda.Fill(dtbl);

        if (dtbl.Rows.Count.ToString() == "1")
        {
            if(ilksifre2.Text == yenisifre.Text)
            {
                cmd.Connection = cn;
                cmd.CommandText = "UPDATE table1 SET password = @password where password = '" + ilksifre.Text + "'";
                cmd.Parameters.AddWithValue("@password",yenisifre.Text);
                cmd.ExecuteNonQuery();
                cn.Close();

            }
        }
    }
   
}