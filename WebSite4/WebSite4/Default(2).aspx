<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default(2).aspx.cs" Inherits="Default_2_" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" href="css/bootstrap-responsive.css"/>
   <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet"/>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="http://mymaplist.com/js/vendor/TweenLite.min.js"></script>
  
    <style>
      body{
    background: url(http://mymaplist.com/img/parallax/back.png);
	background-color: #444;
    background: url(http://mymaplist.com/img/parallax/pinlayer2.png),url(http://mymaplist.com/img/parallax/pinlayer1.png),url(http://mymaplist.com/img/parallax/back.png);    
    background-image: url('https://www.toptal.com/designers/subtlepatterns/patterns/qbkls.png');
}
html,body{
    position: relative;
    height: 100%;
}
.vertical-offset-100{
    padding-top:100px;
}
@-webkit-keyframes fadeInUp {
  0% {
    opacity: 0;
    -webkit-transform: translateY(20px);
    transform: translateY(20px);
  }

  100% {
    opacity: 1;
    -webkit-transform: translateY(0);
    transform: translateY(0);
  }
}

@keyframes fadeInUp {
  0% {
    opacity: 0;
    -webkit-transform: translateY(20px);
    -ms-transform: translateY(20px);
    transform: translateY(20px);
  }

  100% {
    opacity: 1;
    -webkit-transform: translateY(0);
    -ms-transform: translateY(0);
    transform: translateY(0);
  }
}

.fadeInUp {
  -webkit-animation-name: fadeInUp;
  animation-name: fadeInUp;
}
.modalBackground{
    background-color:black;
    filter: alpha(opacity=90);
    opacity:0.8;
}
.modalPopup{
    background-color:#FFFFFF;
    border-width:3px;
    border-style:outset;
    border-color:black;
    padding-top:10px;
    padding-left:10px;
    width:300px;
    height:140px;
}
    </style>
   <script type="text/javascript">

</script>
</head>
<body>
    <form id="form1" runat="server">
            <div class="container">
    <div class="row vertical-offset-100">
    	<div class="col-md-4 col-md-offset-4">
    		<div class="panel panel-default">
			  	<div class="panel-heading text-center">
                      <img src="http://www.masevotomasyon.com.tr/assets/images/mas-logo.png"/>
			    	<h3 class="panel-title"><b> Admin Girişi</b></h3>
			 	</div>
			  	<div class="panel-body">
                      
			    	
                        
                    <fieldset>
			    	  	<div class="form-group">
                              <div class="input-group">
                                  <span class="input-group-addon"><i class=" glyphicon glyphicon-log-in"></i></span>
                              <asp:TextBox CssClass="form-control" runat="server" ID="txt1" placeholder="Kullanıcı İsmi" required="required" autofocus="autofocus"></asp:TextBox>
                              </div>
			    		</div>
                             
			    		<div class="form-group">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <asp:TextBox CssClass="form-control" runat="server" ID="txt2" placeholder="Şifre" TextMode="Password" required="required"></asp:TextBox>

                            </div>
			    		</div>
                        <asp:Button ID="button1" CssClass="btn btn-lg btn-success btn-block btn-primary" Text="Giriş Yap" runat="server" OnClick="button1_Click"/>
                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                      <div class="text-center"> 
                          
                                  <asp:Panel ID="Panel1" runat="server" CssClass="modalPopup text-center" TabIndex="-1" Visible="false">
                                      <br />
                                      <br />
                                            <asp:label runat="server" ID="hoşgeldin">Kullanıcı isminiz ya da şifreniz yanlış.</asp:label>
                                      <br />
                                      <br />
                                      <asp:Button ID="OK" Text="OK" autofocus="autofocus" runat="server" OnClick="OK_Click"/>
                                      
                                        </asp:Panel>
                      </div>     
                        
			    		
			    	</fieldset>
                         
			      	
                 <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" TargetControlID="button1" runat="server" PopupControlID="Panel1" BackgroundCssClass="modalBackground" ></ajaxToolkit:ModalPopupExtender>
			    	</div>
			    </div>
			</div>
		</div>
	</div>
</form>
</body>
</html>
