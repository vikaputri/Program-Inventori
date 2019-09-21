<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Laporan.aspx.cs" Inherits="Bismillah_.Laporan" %>

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
                <asp:LinkButton ID="LinkButton9" runat="server">Laporan</asp:LinkButton>
                &nbsp;&nbsp;
        <asp:Image ID="Image5" runat="server" Height="20px" ImageUrl="~/]]eugv.jpg" Width="21px" />&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton10" runat="server" OnClick="LinkButton10_Click">Log Out</asp:LinkButton>
        </div>
        </div>
        <br />

        <center>
         <div class="h1">
		    <h1 class="auto-style1">Laporan Stok Barang</h1>
		</div>
        <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" PageSize="5" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Kode" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="232px" Width="326px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Kode" HeaderText="Kode" ReadOnly="True" SortExpression="Kode" />
            <asp:BoundField DataField="Nama" HeaderText="Nama" SortExpression="Nama" />
            <asp:BoundField DataField="Kategori" HeaderText="Kategori" SortExpression="Kategori" />
            <asp:BoundField DataField="Jumlah" HeaderText="Jumlah" SortExpression="Jumlah" />
            <asp:BoundField DataField="Harga" HeaderText="Harga" SortExpression="Harga" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
    </center>
    </form>
     <div id = "footer">
        <p color: #FF0000;">&copy Vika Putri Ariyanti</p>
    </div>
</body>
</html>
