<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ayarlar.aspx.cs" Inherits="Ayarlar" %>

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
    <style type="text/css">
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
                width: 1460px;
            }

            #navbar1 {
                margin-left: 130px;
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
       #sifre{
           margin-top:10%;
           width:auto;
           cursor:pointer;
       }
       
       .form-group{
           display:block;
           float:none;
       }
    </style>
    </head>
    
<body>
    <form id="form1" runat="server">
        <div>
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
                            <li><a href="Giriş Sayfası.aspx">Oluştur/Sorgula</a></li>
                            <li><a href="Default3.aspx">Revize Sorgulama</a></li>
                            <li><a href="Default.aspx">Arızaları Görüntüle</a></li>
                            <li><a href="Ayarlar.aspx">Ayarlar</a></li>
                            <li><a href="Default2.aspx">Çıkış</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
            <div class="text-center input-group center-block">
                <h3 class="text-center">Şifrenizi değiştirmek için logoya tıklayınız</h3>
            <img src="http://cdn.onlinewebfonts.com/svg/img_356173.png" class="center-block" id="sifre" height="300" data-toggle="modal" data-target="#myModal" />
            </div>
            <div id="myModal" class="modal fade text-center" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content container-fluid">
                        <div class="modal-header" style="background-color: aqua">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Şifre değiştirme paneli</h4>
                        </div>
                        <div class="modal-body">
                            <div class="vertical-offset-100">
                                <div>
                                    <div class="form-group">
                                        <label>Eski Şifreniz : </label>
                                        <asp:TextBox ID="ilksifre" runat="server" required="on" Width="200" TextMode="Password" CssClass="form-control center-block"></asp:TextBox>

                                        <label>Yeni Şifreniz : </label>
                                        <asp:TextBox ID="ilksifre2" runat="server" required="on" Width="200" TextMode="Password" CssClass="form-control center-block"></asp:TextBox>

                                        <label>Yeni Şifreniz(tekrar) : </label>
                                        <asp:TextBox ID="yenisifre" runat="server" required="on" Width="200" TextMode="Password" CssClass="form-control center-block"></asp:TextBox>
                                        <br />
                                        <asp:Button runat="server" ID="degistir" Text="Değiştir" CssClass="btn-primary btn" BorderStyle="None" OnClick="degistir_Click" Font-Bold="True" Width="200" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </form>
</body>
</html>
