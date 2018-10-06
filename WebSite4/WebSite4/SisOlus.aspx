<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SisOlus.aspx.cs" Inherits="SisOlus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery-footable/0.1.0/css/footable.min.css"
        rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-footable/0.1.0/js/footable.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/bootstrap-responsive.css" />
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <script src="http://mymaplist.com/js/vendor/TweenLite.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.maskedinput/1.4.1/jquery.maskedinput.js"></script>
    <script type="text/javascript" src="http://www.elevateweb.co.uk/wp-content/themes/radial/jquery.elevatezoom.min.js"></script>
    <script type="text/javascript" src="Scripts/jquery.fancybox.js"></script>
    <script type="text/javascript" src="Scripts/jquery.fancybox.pack.js"></script>
    <link href="Scripts/jquery.fancybox.css" rel="stylesheet" type="text/css" media="screen" />
    <title></title>
    <style>
        header {
            background-color: floralwhite;
            align-items: center;
        }

        .navbar-brand {
            padding: 0px;
        }

            .navbar-brand > img {
                height: 80%;
                padding: 15px;
                width: 80%;
            }

        .navbar-alignit .navbar-header {
            -webkit-transform-style: preserve-3d;
            -moz-transform-style: preserve-3d;
            transform-style: preserve-3d;
            height: 50px;
        }

        .navbar-alignit .navbar-brand {
            top: 50%;
            display: block;
            position: relative;
            height: auto;
            transform: translate(0,-50%);
            margin-right: 15px;
            margin-left: 15px;
        }

        .navbar-default .navbar-nav > li > a:hover, .navbar-default .navbar-nav > li > a:focus {
            background-color: dimgray;
        }

        .auto-style1 {
            float: left;
            height: 55px;
            width: 198px;
            margin-left: 3px;
        }

        .auto-style2 {
            float: left;
            height: 36px;
        }

        .auto-style3 {
            width: 167px;
            height: 78px;
            margin-left: 30px;
            height: 49px;
        }

        #navbar1 {
            float: left;
            left: 50%;
        }

        #dışkatman {
            background-color: darkturquoise;
        }

        @media (min-width: 1200px) {
            .container {
                width: 1200px;
            }

            #navbar1 {
                margin-left: 10px;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <nav class="navbar navbar-default container">
                <div class="container-fluid">
                    <div class="auto-style2 navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar1">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="auto-style1" href="#">
                            <img src="http://www.businesschannelturk.com/uploads/content/2017/04/21/mas-mekanik.png" alt="Mas Interkom" class="auto-style3" /></a>
                    </div>
                    <div id="navbar1" class="collapse navbar-collapse">
                        <ul class="nav navbar-nav text-center" style="font-size: 20px">
                            <li><a href="SisOlus.aspx">Sistem Oluştur</a></li>
                            <li><a href="Admrevolustur.aspx">Revize Oluştur</a></li>
                            <li><a href="Default(1).aspx">Arızaları Görüntüle</a></li>
                            <li><a href="Ayarlar2.aspx">Ayarlar</a></li>
                            <li><a href="Default(2).aspx">Çıkış</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
        <div class="container" id="dışkatman">
            <div class="container row text-center" id="bilgiler">
                <div class="form-inline">
                    <br />
                    <div class="form-group">
                        <label for="sistemm">Sistem:</label>
                        <asp:TextBox type="text" CssClass="form-control" ID="sistem" autocomplete="on" runat="server" required="on" />
                    </div>
                    <div class="form-group">
                        <label for="birim">Birim:</label>
                        <asp:TextBox type="text" CssClass="form-control" ID="birim" autocomplete="on" runat="server" />

                    </div>
                    <div class="form-group">
                        <label for="birim">Ürün Adı:</label>
                        <asp:TextBox type="text" CssClass="form-control" ID="ürünad" runat="server" />
                    </div>
                    
                </div>
                <div class="form-group">
                                <br />
                        <asp:Button type="button" class="btn btn-primary btn-lg text-center" ID="goruntule" runat="server" Text="Ekle" OnClick="ekle_Click"></asp:Button>
                            </div>
            </div>
            <br />
            <div class="jumbotron container table" style="width: auto">
                <div style="margin-left: auto; margin-right: auto; max-width: 600px; overflow: scroll">
                    <asp:GridView runat="server" CssClass="footable" ID="gridview1" ViewStateMode="Enabled" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="idx" OnPageIndexChanging="gridview1_PageIndexChanging" OnRowCancelingEdit="gridview1_RowCancelingEdit" OnRowDeleting="gridview1_RowDeleting" OnRowEditing="gridview1_RowEditing" OnRowUpdating="gridview1_RowUpdating" AllowPaging="True">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField HeaderText="Sistem">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("Sistem") %>' autocomplete="on" required="on"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl1" runat="server" Text='<%#Eval("Sistem") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Birim">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("Birim") %>' autocomplete="on" required="on"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl2" runat="server" Text='<%#Eval("Birim")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Ürün Adı">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("UrunAdi") %>' required="on"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl3" runat="server" Text='<%#Eval("UrunAdi")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField HeaderText="Düzenle" ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True" />
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                </div>
            </div>
    </form>
</body>
</html>
