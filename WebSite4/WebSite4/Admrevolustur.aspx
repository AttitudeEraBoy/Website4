<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admrevolustur.aspx.cs" Inherits="Admrevolustur" %>

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
            left: 50%;
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
                width: 1200px;
            }

            #navbar1 {
                margin-left: 10px;
            }
           
        }
        .auto-style4 {
            display: block;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.428571429;
            color: #555;
            vertical-align: middle;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,0.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,0.075);
            -webkit-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
        }
    </style>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#kartno').mask("M999-9999-R99");
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
                            <li><a href="SisOlus.aspx">Sistem Oluştur</a></li>
                            <li><a href="Admrevolustur.aspx">Revize Oluştur</a></li>
                            <li><a href="Default(1).aspx">Arızaları Görüntüle</a></li>
                            <li><a href="Ayarlar2.aspx">Ayarlar</a></li>
                            <li><a href="Default(2).aspx">Çıkış</a></li>
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
                                <asp:TextBox type="text" CssClass="form-control" ID="sistem" list="datalist0" autocomplete="on" runat="server" required="on"/>
                                <datalist id="datalist0" runat="server">
                                    <option value="t" />
                                    <option value="x" />
                                    <option value="y" />
                                    <option value="z" />
                                    <option value="c" />
                                </datalist>
                            </div>
                            <div class="form-group">
                                <label for="birim">Birim:</label>
                                <asp:TextBox type="text" CssClass="form-control" ID="birim" list="datalist1" autocomplete="on" runat="server"/>
                                <datalist id="datalist1">
                                    <option value="ARGE" />
                                    <option value="ARGEa" />
                                    <option value="insan Kaynakları" />
                                    <option value="ARGEs" />
                                </datalist>
                            </div>
                             <div class="form-group">
                                <label for="birim">Ürün Adı:</label>
                                <asp:TextBox type="text" CssClass="form-control" ID="ürünad" runat="server"/>
                            </div>
                            <div class="form-group">
                                <label for="input">Kart Numarası:</label>
                                <asp:TextBox type="text" CssClass="form-control" ID="kartno" list="datalist2" autocomplete="on" runat="server"/>
                                <datalist id="datalist2">
                                    <option value="M097-0502-R03" />
                                    <option value="M097-1241-R07" />
                                    <option value="M097-2442-R08" />
                                    <option value="M097-6452-R02" />
                                    <option value="M097-9403-R01" />
                                </datalist>
                            </div>

                        <div class="form-inline">
                        <div class="form-group">
                            <br />
                            <label for="yapilanrevize">Yapılan Revize:</label><br />
                            <asp:TextBox runat="server" type="text" ID="yapilanrevize" CssClass="form-control" TextMode="MultiLine" Rows="8" Columns="60"></asp:TextBox>
                        </div>

                            <div class="form-group">
                            <br />
                            <label for="revizenedeni">Revize Nedeni:</label><br />
                            <asp:TextBox runat="server" type="text" ID="revizenedeni" CssClass="form-control" TextMode="MultiLine" Rows="8" Columns="60"></asp:TextBox>
                        </div>
                        </div>
                            <div class="form-group">
                                <br />
                                    <label for="dokumanekle">Döküman Ekle</label>
                                    <asp:FileUpload ID="dokumanekleme" runat="server" required="on" />
                                </div>
                        <br />
                            <div class="form-group">
                                <br />
                        <asp:Button type="button" class="btn btn-primary btn-lg text-center" ID="goruntule" runat="server" Text="Ekle" OnClick="ekle_Click"></asp:Button>

                            </div>
                        <br />
                        <br />
                    </div>
                    <div class="jumbotron container table" style="width: auto">
                        <div style="margin-left:auto; margin-right:auto; max-width:600px; overflow:scroll">
                            <asp:GridView runat="server" CssClass="footable" ID="gridview1" ViewStateMode="Enabled" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="id1" OnRowCancelingEdit="gridview1_RowCancelingEdit" OnRowDeleting="gridview1_RowDeleting" OnRowEditing="gridview1_RowEditing" OnRowUpdating="gridview1_RowUpdating" AllowPaging="True" OnPageIndexChanging="gridview1_PageIndexChanging">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:TemplateField HeaderText="Sistem">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("Sistem") %>' list="datalist0" autocomplete="on"></asp:TextBox>
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
                                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("Birim") %>' list="datalist1" autocomplete="on"></asp:TextBox>
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
                                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("UrunAdi") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lbl3" runat="server" Text='<%#Eval("UrunAdi")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Kart No">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Eval("kartno") %>' ClientIDMode="Static" list="datalist2" autocomplete="on"></asp:TextBox>
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
                                    <asp:TemplateField HeaderText="Yapılan Revize">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Eval("yapilanrevize") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lbl5" runat="server" Text='<%#Eval("yapilanrevize")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Revize Nedeni">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Eval("revizenedeni") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lbl6" runat="server" Text='<%#Eval("revizenedeni")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Resim">

                                        <EditItemTemplate>
                                            <asp:FileUpload ID="FileUpload1" runat="server" />
                                        </EditItemTemplate>

                                        <ItemTemplate>
                                            <a class="fancybox" rel="group" id="fancy" href='<%#ResolveUrl(Eval("resim").ToString())%>'>
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
