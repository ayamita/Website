﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TipoUsuario.aspx.cs" Inherits="BackendFems.UI.Grafic.TipoUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>        

    <!-- Fontfaces CSS-->
    <link href="../../Resourse/css/font-face.css" rel="stylesheet" media="all"/>
    <link href="../../Resourse/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all"/>
    <link href="../../Resourse/vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all"/>
    <link href="../../Resourse/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all"/>

    <!-- Bootstrap CSS-->
    <link href="../../Resourse/vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all"/>

    <!-- Vendor CSS-->    
    <link href="../../Resourse/vendor/animsition/animsition.min.css" rel="stylesheet" media="all"/>
    <link href="../../Resourse/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all"/>
    <link href="../../Resourse/vendor/wow/animate.css" rel="stylesheet" media="all"/>
    <link href="../../Resourse/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all"/>
    <link href="../../Resourse/vendor/slick/slick.css" rel="stylesheet" media="all"/>
    <link href="../../Resourse/vendor/select2/select2.min.css" rel="stylesheet" media="all"/>
    <link href="../../Resourse/vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all"/>

    <!-- Main CSS-->
    <link href="../../Resourse/css/theme.css" rel="stylesheet" media="all"/>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
    <link rel="stylesheet" href="/resources/demos/style.css"/>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js" ></script>
    <script src="https://www.google.com/jsapi"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jq uery-ui.js"></script>    
    <script src="../../Resourse/js/TipoUsuario.js"></script>

</head>
<body>
    <form id="form1" name="form1" runat="server">            
        <br /> <br />
        <h2 style="text-align:center">Total de usuarios según su categoría</h2>        
        <!-- STATISTIC-->
            <section class="statistic statistic2">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-lg-3">
                        <div class="statistic__item statistic__item--green">
                                <input type="text" class="number" name="publicaciones" id="perfiles" style="background: transparent; color:#fff";/>
                                <span class="desc"> Total de Perfiles</span>                            
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <div class="statistic__item statistic__item--orange">
                            <input type="text" class="number" name="solicitudes" id="usuarios" style="background: transparent; color:#fff;"/>
                            <span class="desc">Total de Usuarios</span>
                        </div>
                    </div>                 
                </div>
            </div>
        </section>
        <!-- END STATISTIC-->                  
        <h3 style="text-align:center">Tipos de usuario</h3>   
        <div id="chart_div"></div>            
    </form>
</body>
</html>


