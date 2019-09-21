using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bismillah_
{
    public partial class Transaksi_Keluar : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Beranda.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("Transaksi_Masuk.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("Transaksi Keluar.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM [Table] WHERE Kode=" + kode_klr.Text + "";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "SELECT Nama, Kategori, Jumlah, Harga FROM [Table] WHERE Kode=" + kode_klr.Text + "";
                cmd.ExecuteNonQuery();
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    Label1.Visible = true;
                    Label2.Visible = true;
                    Label3.Visible = true;
                    Label4.Visible = true;
                    jml_klr.Visible = true;
                    Button5.Visible = true;
                    jml_lbl.Visible = true;
                    Label5.Visible = false;
                    nama_lbl.Text = (reader["Nama"].ToString());
                    kategori_lbl.Text = (reader["Kategori"].ToString());
                    stok_lbl.Text = (reader["Jumlah"].ToString());
                    harga_lbl.Text = (reader["Harga"].ToString());
                }

            }
            else
            {
                Label1.Visible = false;
                Label2.Visible = false;
                Label3.Visible = false;
                Label4.Visible = false;
                Button5.Visible = false;
                jml_klr.Visible = false;
                jml_lbl.Visible = false;
                Label5.Visible = true;
                Label5.Text = "Maaf Kode Barang Yang Anda Cari Tidak Di Temukan";
            }
            con.Close();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            if (int.Parse(jml_klr.Text) <= int.Parse(stok_lbl.Text))
            {
                int a;
                a = int.Parse(stok_lbl.Text) - int.Parse(jml_klr.Text);
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "UPDATE [Table] SET Jumlah=" + a + " WHERE Kode=" + int.Parse(kode_klr.Text) + "";
                cmd.ExecuteNonQuery();
                Label1.Visible = false;
                Label2.Visible = false;
                Label3.Visible = false;
                Label4.Visible = false;
                Button5.Visible = false;
                jml_klr.Visible = false;
                jml_lbl.Visible = false;
                nama_lbl.Text = "";
                kategori_lbl.Text = "";
                stok_lbl.Text = "";
                harga_lbl.Text = "";
                kode_klr.Text = "";
                Label5.Visible = true;
                Label5.Text = "Stok telah dikurangi";
                con.Close();
            }
            else
            {
                kode_klr.Text = "";
                Label5.Visible = true;
                Label5.Text = "Maaf Stok Tidak Mencukupi";
                
            }

        }

        protected void LinkButton9_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Laporan.aspx");
        }
    }
}