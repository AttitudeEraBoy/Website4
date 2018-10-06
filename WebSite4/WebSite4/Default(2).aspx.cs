using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using MySql.Data;

public partial class Default_2_ : System.Web.UI.Page
{
    MySqlConnection cn = new MySqlConnection("Server=localhost;Database=mydb;Uid=root;Password=123456; CharSet=UTF8;");
    MySqlCommand cmd = new MySqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void button1_Click(object sender, EventArgs e)
    {
        string usern = txt1.Text;
        string passw = txt2.Text;


        cn.Open();
        cmd.Connection = cn;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from adminsifre where username = @username and password = @password";
        cmd.Parameters.AddWithValue("@username", usern);
        cmd.Parameters.AddWithValue("@password", passw);
        MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
        DataTable dtbl = new DataTable();
        sda.Fill(dtbl);
        Panel1.Visible = false;
        if (dtbl.Rows.Count == 1)
        {
            Response.Redirect("SisOlus.aspx");
        }
        else
        {
            Panel1.Visible = true;
        }
        dtbl.Rows.Clear();
        cn.Close();
    }

    protected void OK_Click(object sender, EventArgs e)
    {

    }

}