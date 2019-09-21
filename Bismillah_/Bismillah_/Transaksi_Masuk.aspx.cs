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
    public partial class Transaksi_Masuk : System.Web.UI.Page
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
            Session["user"] = null;
            Response.Redirect("Login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (kode_msk.Text == "")
            {
                Label5.Visible = true;
                Label5.Text = "Belum Diisi";
            }
            else if (nama_msk.Text == "")
            {
                Label6.Visible = true;
                Label6.Text = "Belum Diisi";
            }
            else if (stok_msk.Text == "")
            {
                Label8.Visible = true;
                Label8.Text = "Belum Diisi";
            }
            else if (harga_msk.Text == "")
            {
                Label9.Visible = true;
                Label9.Text = "Belum Diisi";
            }
            else
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "SELECT * FROM [Table] WHERE Kode='" + kode_msk.Text + "'";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Label7.Visible = true;
                    Label7.Text = "Kode Barang Telah Digunakan";
                }
                else
                {
                    cmd.CommandText = "INSERT INTO [Table] VALUES(" + kode_msk.Text + ",'" + nama_msk.Text + "','" + kategori_msk.SelectedValue + "'," + stok_msk.Text + "," + harga_msk.Text + ")";
                    cmd.ExecuteNonQuery();
                    Label10.Visible = true;
                    Label10.Text = "Item Telah Ditambahkan";
                    kode_msk.Text = "";
                    nama_msk.Text = "";
                    stok_msk.Text = "";
                    harga_msk.Text = "";
                    kategori_msk.SelectedIndex = 0;
                }

                con.Close();


            }
        }

        protected void Button4_Click(object sender, EventArgs e)
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
                    Button3.Visible = true;
                    jml_lbl.Visible = true;
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
                Button3.Visible = false;
                jml_klr.Visible = false;
                jml_lbl.Visible = false;
                nama_lbl.Text = "";
                kategori_lbl.Text = "";
                stok_lbl.Text = "";
                harga_lbl.Text = "";
                Label11.Visible = true;
                Label11.Text = "Item Tidak Ditemukan";
                kode_klr.Text = "";
            }

            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int a;
            a = int.Parse(stok_lbl.Text) + int.Parse(jml_klr.Text);
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "UPDATE [Table] SET Jumlah=" + a + " WHERE Kode=" + int.Parse(kode_klr.Text) + "";
            cmd.ExecuteNonQuery();
            Label1.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
            Button3.Visible = false;
            jml_klr.Visible = false;
            jml_lbl.Visible = false;
            nama_lbl.Text = "";
            kategori_lbl.Text = "";
            stok_lbl.Text = "";
            harga_lbl.Text = "";
            kode_klr.Text = "";
            Label10.Visible = true;
            Label10.Text = "Item Telah Ditambahkan";
            con.Close();
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void LinkButton9_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Laporan.aspx");
        }
    }
    
}