<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Transaksi Keluar.aspx.cs" Inherits="Bismillah_.Transaksi_Keluar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
                #navbar {
            background-color:antiquewhite;
            height: 65px;
            width: 950px;
        }
        body {
            background-image: url(4.jpg);
        }
        #footer{
        position:absolute;
        bottom:0;
        }
        .auto-style2 {
            color: #FF33CC;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
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
                &nbsp;&nbsp;
        <asp:Image ID="Image5" runat="server" Height="20px" ImageUrl="~/]]eugv.jpg" Width="21px" />&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton10" runat="server" OnClick="LinkButton10_Click">Log Out</asp:LinkButton>
                <br />
                <br />
        </div>
        
        <br />
        <h2 class="auto-style1"><span class="auto-style2">Transaksi Keluar</span>&nbsp;</h2>
        <p class="auto-style1">&nbsp;</p>
        <p style="height: 199px; margin-left: 40px">
        <label class="label">Kode&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;</label>
        <asp:TextBox class="input2" ID="kode_klr" runat="server"></asp:TextBox>
            <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Cari" style="height: 26px" />
        <br />
        <br />
        <asp:Label ID="Label1" Visible="false" runat="server" Text="Nama : "></asp:Label><asp:Label ID="nama_lbl" runat="server" Text=""></asp:Label> &nbsp; <asp:Label ID="Label5" runat="server" Text=""></asp:Label><br />
        <asp:Label ID="Label2" Visible="false" runat="server" Text="Kategori : "></asp:Label><asp:Label ID="kategori_lbl" runat="server" Text=""></asp:Label> <br />
        <asp:Label ID="Label3" Visible="false" runat="server" Text="Stok : "></asp:Label><asp:Label ID="stok_lbl" runat="server" Text=""></asp:Label><br />
        <asp:Label ID="Label4" Visible="false" runat="server" Text="Harga : "></asp:Label><asp:Label ID="harga_lbl" runat="server" Text=""></asp:Label><br /><br />
        <asp:Label ID="jml_lbl" Visible="false" runat="server" Text="Jumlah Barang Keluar"></asp:Label>&nbsp;&nbsp; <asp:TextBox Visible="false" class="input2" ID="jml_klr" runat="server"></asp:TextBox>
        <br>
       <asp:Button Visible="false" ID="Button5" runat="server" OnClick="Button5_Click" Text="Proses" />
        </p>

        <div id = "footer">
        <p color: #FF0000;">&copy Vika Putri Ariyanti</p>
    </div>
    </form>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
     </body>
</html>
