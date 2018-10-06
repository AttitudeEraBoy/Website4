<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Giriş Sayfası.aspx.cs" Inherits="Giriş_Sayfası" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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

        .navbar-default .navbar-nav > li > a:hover, .navbar-default .navbar-nav > li > a:focus {
            background-color: dimgray;
        }

        #navbar1 {
            float: left;
            left:50%;
        }

        #dışkatman {
            background-color: darkturquoise;
        }

        #gridview1 {
            width: auto;
            height: 100%;
            max-width: 600px;
            float: left;
           
        }
        .active img {
            border: 2px solid #333 !important;
        }

        #Img1 {
            width: auto;
        }
        @media (min-width: 1200px) {
  .container {
    width: 1560px;
  }
  #navbar1{
      margin-left:180px;
  }
}
        
  }
}
    </style>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#kartno').mask("M999-9999-R99");
            //$('[id*=gridview1]').footable();
            $('[id*=gridview1] #TextBox4').mask("M999-9999-R99");
            $(".fancybox").fancybox({
                openEffect: 'fade',
                closeEffect: 'elastic',
                'overlayShow': false,
                helpers: {
                    title: {
                        type: 'inside'
                    },
                    overlay: {
                        css: {
                            'background-color': 'rgba(4, 2, 1, 1)',
                            'background-opacity': '0.1'
                        }
                    }
                }
            });


            $('[id*=gridview1] img').elevateZoom({
                cursor: 'pointer',
                zoomWindowWidth: 300,
                zoomWindowHeight: 300,
                responsive: true
            });

        });
    </script>

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
                            <li><a href="Giriş Sayfası.aspx" class="active">Oluştur/Sorgula</a></li>
                            <li><a href="Default3.aspx">Revize Sorgulama</a></li>
                            <li><a href="Default.aspx">Arızaları Görüntüle</a></li>
                            <li><a href="Ayarlar.aspx">Ayarlar</a></li>
                            <li><a href="Default2.aspx">Çıkış</a></li>                 
                        </ul>
                        </div>
                </div>
            </nav>
            <div>
                <div class="container" id="dışkatman">
                    <div class="container row text-center" id="bilgiler">
                        <div class="form-inline">
                            <br />
                            <div class="form-group">
                                <label id="sistemlbl">Sistem:</label>
                                <asp:TextBox type="text" CssClass="form-control" ID="sistem" list="datalist0" autocomplete="on" runat="server" required="on" />
                                <datalist id="datalist0">
                                    <option value="t" />
                                    <option value="x" />
                                    <option value="y" />
                                    <option value="z" />
                                    <option value="c" />
                                </datalist>
                            </div>
                            <div class="form-group">
                                <label for="birim">Birim:</label>
                                <asp:TextBox type="text" CssClass="form-control" ID="birim" list="datalist1" autocomplete="on" runat="server" required="on" />
                                <datalist id="datalist1">
                                    <option value="ARGE" />
                                    <option value="ARGEa" />
                                    <option value="insan Kaynakları" />
                                    <option value="ARGEs" />
                                </datalist>
                            </div>
                            <div class="form-group">
                                <label for="birim">Ürün Adı:</label>
                                <asp:TextBox type="text" CssClass="form-control" ID="ürünad" runat="server" required="on" />
                            </div>
                            <div class="form-group">
                                <label for="input">Kart Numarası:</label>
                                <asp:TextBox type="text" CssClass="form-control" ID="kartno" list="datalist2" autocomplete="on" runat="server" required="on" />
                                <datalist id="datalist2">
                                    <option value="M097-0502-R03" />
                                    <option value="M097-1241-R07" />
                                    <option value="M097-2442-R08" />
                                    <option value="M097-6452-R02" />
                                    <option value="M097-9403-R01" />
                                </datalist>
                            </div>

                        </div>
                        <br />
                        <div class="form-inline">
                            <div class="form-group">
                                <label for="birim">Seri No:</label>
                                <asp:TextBox type="text" CssClass="form-control" ID="serino" runat="server" required="on" />
                            </div>
                            <div class="form-group">
                                <label for="birim">Arıza Tipi:</label>
                                <asp:TextBox type="text" CssClass="form-control" ID="arızatipi" autocomplete="on" list="datalist3" runat="server" required="on" />
                                <datalist id="datalist3">
                                    <option value="Hasar" />
                                    <option value="İletişim sorunu" />
                                    <option value="Görüntü" />
                                    <option value="Hizmet eksikliği" />
                                    <option value="Ses" />
                                    <option value="Hafıza" />
                                </datalist>
                            </div>
                            <div class="form-group">
                                <label for="input">Yapılan İşlem:</label>
                                <asp:TextBox type="text" CssClass="form-control" ID="yapılanislem" runat="server" required="on" TextMode="MultiLine"/>
                            </div>
                        </div>
                        <br />
                        <div class="form-inline">
                            <div class="form-group">
                                <label for="birim">Değiştirilen Parçalar ve Pozisyonları:</label>
                                <asp:TextBox type="text" CssClass="form-control" ID="degisparca" runat="server" required="on" />
                            </div>
                            <div class="form-group">
                                <label for="birim">Son durum:</label>
                                <br />
                                <asp:DropDownList runat="server" TabIndex="-1" ID="sondurum">
                                    <asp:ListItem>Tamamlandı</asp:ListItem>
                                    <asp:ListItem>Tamamlanmadı</asp:ListItem>
                                </asp:DropDownList>
                            </div>

                            <div class="form-inline">
                                <br />
                                <div class="form-group">
                                    <label for="input">Giriş Tarihi:</label>
                                    <asp:TextBox type="date" CssClass="form-control" ID="giristarihi" runat="server" required="on" />
                                </div>
                                <div class="form-group">
                                    <label for="birim">Şehir:</label>
                                    <asp:TextBox type="text" CssClass="form-control" ID="sehir" autocomplete="on" runat="server" list="datalist4" required="on" />
                                    <datalist id="datalist4">
                                        <option value="Adana">Adana</option>
                                        <option value="Adıyaman">Adıyaman</option>
                                        <option value="Afyon">Afyon</option>
                                        <option value="Ağrı">Ağrı</option>
                                        <option value="Aksaray">Aksaray</option>
                                        <option value="Amasya">Amasya</option>
                                        <option value="Ankara">Ankara</option>
                                        <option value="Antalya">Antalya</option>
                                        <option value="Ardahan">Ardahan</option>
                                        <option value="Artvin">Artvin</option>
                                        <option value="Aydın">Aydın</option>
                                        <option value="Balıkesir">Balıkesir</option>
                                        <option value="Bartın">Bartın</option>
                                        <option value="Batman">Batman</option>
                                        <option value="Bayburt">Bayburt</option>
                                        <option value="Bilecik">Bilecik</option>
                                        <option value="Bingöl">Bingöl</option>
                                        <option value="Bitlis">Bitlis</option>
                                        <option value="Bolu">Bolu</option>
                                        <option value="Burdur">Burdur</option>
                                        <option value="Bursa">Bursa</option>
                                        <option value="Çanakkale">Çanakkale</option>
                                        <option value="Çankırı">Çankırı</option>
                                        <option value="Çorum">Çorum</option>
                                        <option value="Denizli">Denizli</option>
                                        <option value="Diyarbakır">Diyarbakır</option>
                                        <option value="Düzce">Düzce</option>
                                        <option value="Edirne">Edirne</option>
                                        <option value="Elazığ">Elazığ</option>
                                        <option value="Erzincan">Erzincan</option>
                                        <option value="Erzurum">Erzurum</option>
                                        <option value="Eskişehir">Eskişehir</option>
                                        <option value="Gaziantep">Gaziantep</option>
                                        <option value="Giresun">Giresun</option>
                                        <option value="Gümüşhane">Gümüşhane</option>
                                        <option value="Hakkari">Hakkari</option>
                                        <option value="Hatay">Hatay</option>
                                        <option value="Iğdır">Iğdır</option>
                                        <option value="Isparta">Isparta</option>
                                        <option value="Mersin">Mersin</option>
                                        <option value="İstanbul">İstanbul</option>
                                        <option value="İzmir">İzmir</option>
                                        <option value="Kahramanmaraş">Kahramanmaraş</option>
                                        <option value="Karabük">Karabük</option>
                                        <option value="Karaman">Karaman</option>
                                        <option value="Kars">Kars</option>
                                        <option value="Kastamonu">Kastamonu</option>
                                        <option value="Kayseri">Kayseri</option>
                                        <option value="Kırıkkale">Kırıkkale</option>
                                        <option value="Kırklareli">Kırklareli</option>
                                        <option value="Kırşehir">Kırşehir</option>
                                        <option value="Kilis">Kilis</option>
                                        <option value="Kilis">Kocaeli</option>
                                        <option value="Konya">Konya</option>
                                        <option value="Kütahya">Kütahya</option>
                                        <option value="Malatya">Malatya</option>
                                        <option value="Manisa">Manisa</option>
                                        <option value="Mardin">Mardin</option>
                                        <option value="Muğla">Muğla</option>
                                        <option value="Muş">Muş</option>
                                        <option value="Nevşehir">Nevşehir</option>
                                        <option value="Niğde">Niğde</option>
                                        <option value="Ordu">Ordu</option>
                                        <option value="Osmaniye">Osmaniye</option>
                                        <option value="Rize">Rize</option>
                                        <option value="Sakarya">Sakarya</option>
                                        <option value="Samsun">Samsun</option>
                                        <option value="Siirt">Siirt</option>
                                        <option value="Sinop">Sinop</option>
                                        <option value="Sivas">Sivas</option>
                                        <option value="Şanlıurfa">Şanlıurfa</option>
                                        <option value="Şırnak">Şırnak</option>
                                        <option value="Tekirdağ">Tekirdağ</option>
                                        <option value="Tokat">Tokat</option>
                                        <option value="Trabzon">Trabzon</option>
                                        <option value="Tunceli">Tunceli</option>
                                        <option value="Uşak">Uşak</option>
                                        <option value="Van">Van</option>
                                        <option value="Yalova">Yalova</option>
                                        <option value="Yozgat">Yozgat</option>
                                        <option value="Zonguldak">Zonguldak</option>
                                    </datalist>
                                </div>
                                <div class="form-group">
                                    <label for="birim">Proje Adı:</label>
                                    <asp:TextBox type="text" CssClass="form-control" ID="projeadi" runat="server" required="on" />
                                </div>
                                <div class="form-group">
                                    <label for="dokumanekle">Döküman Ekle</label>
                                    <asp:FileUpload ID="dokumanekleme" runat="server" required="on" />
                                </div>
                            </div>
                            <br />
                            <asp:Button type="button" class="btn btn-primary btn-lg text-center" ID="ekle" runat="server" Text="Ekle" OnClick="ekle_Click"></asp:Button>
                            <br />
                            <br />
                        </div>
                        <div class="jumbotron container table" style="width: auto">
                            <div class="table table-responsive table-condensed table-bordered table-hover">
                                <asp:GridView runat="server" CssClass="footable" ID="gridview1" ViewStateMode="Enabled" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" OnRowCancelingEdit="gridview1_RowCancelingEdit" OnRowDeleted="gridview1_RowDeleted" OnRowDeleting="gridview1_RowDeleting" OnRowEditing="gridview1_RowEditing" OnRowUpdating="gridview1_RowUpdating" DataKeyNames="idd" AllowPaging="True" OnPageIndexChanging="gridview1_PageIndexChanging" OnSelectedIndexChanging="gridview1_SelectedIndexChanging">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="Sistem">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox1" runat="server" Text='<%#Eval("Sistem") %>' CssClass="form-control" autocomplete="on" list="datalist0" Width="150" />
                                                <datalist id="datalist0">
                                                    <option value="t" />
                                                    <option value="x" />
                                                    <option value="y" />
                                                    <option value="z" />
                                                    <option value="c" />
                                                </datalist>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lbl1" runat="server" Text='<%#Eval("Sistem") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Birim">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox2" runat="server" Text='<%#Eval("Birim") %>' CssClass="form-control" list="datalist1" autocomplete="on" Width="150"></asp:TextBox>
                                                <datalist id="datalist1">
                                                    <option value="ARGE" />
                                                    <option value="ARGEa" />
                                                    <option value="insan Kaynakları" />
                                                    <option value="ARGEs" />
                                                </datalist>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lbl2" runat="server" Text='<%#Eval("Birim")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Ürün Adı">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox3" runat="server" Text='<%#Eval("UrunAdi") %>' CssClass="form-control" Width="150"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lbl3" runat="server" Text='<%#Eval("UrunAdi")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Kart No">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox4" runat="server" ClientIDMode="Static" Text='<%#Eval("kartno") %>' CssClass="form-control" list="datalist2" autocomplete="on" Width="150"></asp:TextBox>
                                                <datalist id="datalist2">
                                                    <option value="M097-0502-R03" />
                                                    <option value="M097-1241-R07" />
                                                    <option value="M097-2442-R08" />
                                                    <option value="M097-6452-R02" />
                                                    <option value="M097-9403-R01" />
                                                </datalist>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lbl4" runat="server" Text='<%#Eval("kartno")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Seri No">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox5" runat="server" Text='<%#Eval("serino") %>' CssClass="form-control" Width="150"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lbl5" runat="server" Text='<%#Eval("serino")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Arıza Tipi">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox6" runat="server" Text='<%#Eval("arizatipi") %>' CssClass="form-control" list="datalist3" autocomplete="on" Width="150"></asp:TextBox>
                                                <datalist id="datalist3">
                                                    <option value="Hasar" />
                                                    <option value="İletişim sorunu" />
                                                    <option value="Görüntü" />
                                                    <option value="Hizmet eksikliği" />
                                                    <option value="Ses" />
                                                    <option value="Hafıza" />
                                                </datalist>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lbl6" runat="server" Text='<%#Eval("arizatipi")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Yapılan İşlem">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox7" runat="server" Text='<%#Eval("yapilanislem") %>' CssClass="form-control" Width="150"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lbl7" runat="server" Text='<%#Eval("yapilanislem")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Değiştirilen Parçalar ve Pozisyonları">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox8" runat="server" Text='<%#Eval("degparcvepoz") %>' CssClass="form-control" Width="150"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lbl8" runat="server" Text='<%#Eval("degparcvepoz")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Son Durum">
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%#Eval("sondurum") %>' Width="150">
                                                    <asp:ListItem Text="Tamamlandı"></asp:ListItem>
                                                    <asp:ListItem Text="Tamamlanmadı"></asp:ListItem>
                                                </asp:DropDownList>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lbl9" runat="server" Text='<%#Eval("sondurum")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Gidiş Tarihi">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox10" type="date" runat="server" Text='<%#Eval("gidistarihi") %>' CssClass="form-control" Width="150"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lbl10" runat="server" Text='<%#Eval("gidistarihi")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Şehir">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox11" runat="server" Text='<%#Eval("sehir") %>' CssClass="form-control" list="datalist4" autocomplete="on" Width="150"></asp:TextBox>
                                                <datalist id="datalist4">
                                                    <option value="Adana">Adana</option>
                                                    <option value="Adıyaman">Adıyaman</option>
                                                    <option value="Afyon">Afyon</option>
                                                    <option value="Ağrı">Ağrı</option>
                                                    <option value="Aksaray">Aksaray</option>
                                                    <option value="Amasya">Amasya</option>
                                                    <option value="Ankara">Ankara</option>
                                                    <option value="Antalya">Antalya</option>
                                                    <option value="Ardahan">Ardahan</option>
                                                    <option value="Artvin">Artvin</option>
                                                    <option value="Aydın">Aydın</option>
                                                    <option value="Balıkesir">Balıkesir</option>
                                                    <option value="Bartın">Bartın</option>
                                                    <option value="Batman">Batman</option>
                                                    <option value="Bayburt">Bayburt</option>
                                                    <option value="Bilecik">Bilecik</option>
                                                    <option value="Bingöl">Bingöl</option>
                                                    <option value="Bitlis">Bitlis</option>
                                                    <option value="Bolu">Bolu</option>
                                                    <option value="Burdur">Burdur</option>
                                                    <option value="Bursa">Bursa</option>
                                                    <option value="Çanakkale">Çanakkale</option>
                                                    <option value="Çankırı">Çankırı</option>
                                                    <option value="Çorum">Çorum</option>
                                                    <option value="Denizli">Denizli</option>
                                                    <option value="Diyarbakır">Diyarbakır</option>
                                                    <option value="Düzce">Düzce</option>
                                                    <option value="Edirne">Edirne</option>
                                                    <option value="Elazığ">Elazığ</option>
                                                    <option value="Erzincan">Erzincan</option>
                                                    <option value="Erzurum">Erzurum</option>
                                                    <option value="Eskişehir">Eskişehir</option>
                                                    <option value="Gaziantep">Gaziantep</option>
                                                    <option value="Giresun">Giresun</option>
                                                    <option value="Gümüşhane">Gümüşhane</option>
                                                    <option value="Hakkari">Hakkari</option>
                                                    <option value="Hatay">Hatay</option>
                                                    <option value="Iğdır">Iğdır</option>
                                                    <option value="Isparta">Isparta</option>
                                                    <option value="Mersin">Mersin</option>
                                                    <option value="İstanbul">İstanbul</option>
                                                    <option value="İzmir">İzmir</option>
                                                    <option value="Kahramanmaraş">Kahramanmaraş</option>
                                                    <option value="Karabük">Karabük</option>
                                                    <option value="Karaman">Karaman</option>
                                                    <option value="Kars">Kars</option>
                                                    <option value="Kastamonu">Kastamonu</option>
                                                    <option value="Kayseri">Kayseri</option>
                                                    <option value="Kırıkkale">Kırıkkale</option>
                                                    <option value="Kırklareli">Kırklareli</option>
                                                    <option value="Kırşehir">Kırşehir</option>
                                                    <option value="Kilis">Kilis</option>
                                                    <option value="Kilis">Kocaeli</option>
                                                    <option value="Konya">Konya</option>
                                                    <option value="Kütahya">Kütahya</option>
                                                    <option value="Malatya">Malatya</option>
                                                    <option value="Manisa">Manisa</option>
                                                    <option value="Mardin">Mardin</option>
                                                    <option value="Muğla">Muğla</option>
                                                    <option value="Muş">Muş</option>
                                                    <option value="Nevşehir">Nevşehir</option>
                                                    <option value="Niğde">Niğde</option>
                                                    <option value="Ordu">Ordu</option>
                                                    <option value="Osmaniye">Osmaniye</option>
                                                    <option value="Rize">Rize</option>
                                                    <option value="Sakarya">Sakarya</option>
                                                    <option value="Samsun">Samsun</option>
                                                    <option value="Siirt">Siirt</option>
                                                    <option value="Sinop">Sinop</option>
                                                    <option value="Sivas">Sivas</option>
                                                    <option value="Şanlıurfa">Şanlıurfa</option>
                                                    <option value="Şırnak">Şırnak</option>
                                                    <option value="Tekirdağ">Tekirdağ</option>
                                                    <option value="Tokat">Tokat</option>
                                                    <option value="Trabzon">Trabzon</option>
                                                    <option value="Tunceli">Tunceli</option>
                                                    <option value="Uşak">Uşak</option>
                                                    <option value="Van">Van</option>
                                                    <option value="Yalova">Yalova</option>
                                                    <option value="Yozgat">Yozgat</option>
                                                    <option value="Zonguldak">Zonguldak</option>
                                                </datalist>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lbl11" runat="server" Text='<%#Eval("sehir")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Proje Adı">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox12" runat="server" Text='<%#Eval("projeadi") %>' CssClass="form-control" Width="150"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lbl12" runat="server" Text='<%#Eval("projeadi")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Resim">
                                            <EditItemTemplate>
                                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <a class="fancybox" rel="group" href='<%#ResolveUrl(Eval("resim").ToString())%>'>
                                                    <img id="Resim" runat="server" src='<%#ResolveUrl(Eval("resim").ToString())%>' data-target="#loginmodal" data-toggle="modal" height="100" width="100" data-zoom-image='<%#ResolveUrl(Eval("resim").ToString())%>' />
                                                </a>
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
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>