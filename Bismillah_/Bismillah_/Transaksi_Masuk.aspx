<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Transaksi_Masuk.aspx.cs" Inherits="Bismillah_.Transaksi_Masuk" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body { 
        background-image:url(4.jpg); 
        }
        #navbar {
            background-color:antiquewhite;
            height: 65px;
            width:1000px;
        }
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-align: center;
            color: #FF3399;
        }
        .auto-style3 {
            color: #FF3399;
        }
        #footer{
        position:absolute;
        bottom:0;
        }
    </style>
</head>
<body>
     <form id="form2" runat="server">
        <div>
            <div id="navbar">
                <br />
        <asp:Image ID="Image1" runat="server" Height="20px" ImageUrl="~/beranda.png" Width="25px" />&nbsp;&nbsp;<asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">Beranda</asp:LinkButton>
                &nbsp;&nbsp;
        <asp:Image ID="Image3" runat="server" Height="20px" ImageUrl="~/keluar.png" Width="21px" />&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click">Transaksi Masuk</asp:LinkButton>
                &nbsp; &nbsp;
        <asp:Image ID="Image2" runat="server" Height="20px" ImageUrl="~/mASUK.png" Width="21px" />&nbsp;<asp:LinkButton ID="LinkButton8" runat="server" OnClick="LinkButton8_Click">Transaksi Keluar</asp:LinkButton>
                &nbsp; &nbsp;
        <asp:Image ID="Image4" runat="server" Height="20px" ImageUrl="~/images.png" Width="21px" />&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton9" runat="server" OnClick="LinkButton9_Click1">Laporan</asp:LinkButton>
                &nbsp;
        <asp:Image ID="Image5" runat="server" Height="20px" ImageUrl="~/]]eugv.jpg" Width="21px" />&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton10" runat="server" OnClick="LinkButton10_Click">Log Out</asp:LinkButton>
                <br />
                <br />
        </div>
        </div>
    

        <div class="h1">
            <br />
		    <h1 class="auto-style2">Transaksi Masuk</h1>
            <p class="auto-style1">&nbsp;</p>
		</div>

		<div class="form">
		    <h2 style="margin-left: 40px" class="auto-style3">Barang Masuk&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tambah Stok</h2>
            <p>&nbsp;</p>
            <p style="margin-left: 40px">
            <label class="label">Kode&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </label>
            <asp:TextBox class="input" ID="kode_msk" runat="server"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" Visible="False" runat="server" ForeColor="Red"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <label class="label">Kode&nbsp;&nbsp;&nbsp; </label>
            <asp:TextBox class="input2" ID="kode_klr" runat="server"></asp:TextBox>
                
            <asp:Button ID="Button4" class="button" runat="server" OnClick="Button4_Click" Text="Cari" />
                <br />
                <br>
            
            <label class="label">Nama&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </label>
            <asp:TextBox class="input" ID="nama_msk" runat="server"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label6" Visible="False" runat="server" ForeColor="Red"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" Visible="false" runat="server" Text="Nama : "></asp:Label><asp:Label ID="nama_lbl" runat="server" Text=""></asp:Label>
            <asp:Label ID="Label11" Visible="false" runat="server"></asp:Label>
                <br />
            <br>
            <label class="label">Kategori&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </label>
            <asp:DropDownList class="input select" ID="kategori_msk" runat="server">
                <asp:ListItem>Makanan</asp:ListItem>
                <asp:ListItem>Perlengkapan Rumah Tangga</asp:ListItem>
                <asp:ListItem>Perlengkapan Sekolah</asp:ListItem>
                <asp:ListItem>Alat Tulis</asp:ListItem>
                <asp:ListItem>Mainan</asp:ListItem>
                </asp:DropDownList>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label2" Visible="false" runat="server" Text="Kategori : ">

         </asp:Label><asp:Label ID="kategori_lbl" runat="server" Text=""></asp:Label> 
		        <br />
		 <br />
		 <label class="label">Jumlah&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
         <asp:TextBox class="input" ID="stok_msk" runat="server"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label8" Visible="False" runat="server" ForeColor="Red"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label3" Visible="false" runat="server" Text="Stok : "></asp:Label><asp:Label ID="stok_lbl" runat="server" Text=""></asp:Label>
                <br />
                <br>
		 <label class="label">Harga (satuan)&nbsp;&nbsp;&nbsp; </label>
         <asp:TextBox class="input" ID="harga_msk" runat="server"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label9" Visible="False" runat="server" ForeColor="Red"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label4" Visible="false" runat="server" Text="Harga : "></asp:Label><asp:Label ID="harga_lbl" runat="server" Text=""></asp:Label><br>
         <br />
         <asp:Button class="button" ID="Button1" runat="server" Text="Tambah" OnClick="Button1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="jml_lbl" Visible="false" runat="server" Text="Jumlah Item"></asp:Label>&nbsp;&nbsp;&nbsp;
         <asp:TextBox Visible="false" class="input2" ID="jml_klr" runat="server"></asp:TextBox>
         <asp:Button ID="Button3" visible="false" class="button2" runat="server" OnClick="Button3_Click" Text="Proses" />
            </p>
            <p style="margin-left: 40px">
                <br />
        <asp:Label ID="Label7" Visible="false" runat="server"></asp:Label> 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:Label ID="Label10" Visible="false" runat="server"></asp:Label>
		    </p>
		</div>

         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>

     </form>
     <div id = "footer">
        <p color: #FF0000;">&copy Vika Putri Ariyanti</p>
    </div>
     </body>
</html>