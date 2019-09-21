<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Beranda.aspx.cs" Inherits="Bismillah_.Beranda" %>

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
            width: 950px;
        }
        #footer{
        position:absolute;
        bottom:0;
        }
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
            <div id="navbar">
                <br />
        <asp:Image ID="Image1" runat="server" Height="20px" ImageUrl="~/beranda.png" Width="25px" />&nbsp;&nbsp;<asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">Beranda</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Image ID="Image3" runat="server" Height="20px" ImageUrl="~/keluar.png" Width="21px" />&nbsp;<asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click">Transaksi Masuk</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Image ID="Image2" runat="server" Height="20px" ImageUrl="~/mASUK.png" Width="21px" />&nbsp;<asp:LinkButton ID="LinkButton8" runat="server" OnClick="LinkButton8_Click">Transaksi Keluar</asp:LinkButton>
                &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image4" runat="server" Height="20px" ImageUrl="~/images.png" Width="21px" />&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton9" runat="server" OnClick="LinkButton9_Click">Laporan</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image5" runat="server" Height="20px" ImageUrl="~/]]eugv.jpg" Width="21px" style="margin-bottom: 0px" />&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton10" runat="server" OnClick="LinkButton10_Click">Log Out</asp:LinkButton>
                <br />
                <br />
        </div>  
            <br />
            <br />
            <br />
        <br />
    <div id="judul" style="font-family: 'Bauhaus 93'; font-size: 61px; color: #FF00FF;" class="auto-style1">
        <asp:Image ID="Image6" runat="server" ImageUrl="~/inventory-icon-png-23.jpg" BackColor="#99CCFF" ForeColor="#99CCFF" style="margin-right: 0px" />
        <br />
        PHI INVENTORY<br />
     </div>
    </form>
     <div id = "footer">
        <p color: #FF0000;">&copy Vika Putri Ariyanti</p>
    </div>
</body>
</html>
