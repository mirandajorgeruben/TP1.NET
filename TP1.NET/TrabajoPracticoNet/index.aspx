<%@ Page MasterPageFile="~/Master.Master" Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="TP.index" %>

<asp:Content runat="server" ContentPlaceHolderID="head">
    
    <title>Inicio</title>
    
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderId="Contenido">
    <div class="navbar navbar-fixed-top bs-docs-nav" role="banner">
  
        <div class="conjtainer">

          <div class="navbar-header">
		      <button class="navbar-toggle btn-navbar" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
			    <span>Menu</span>
		      </button>
		      <a href="index.aspx" class="navbar-brand hidden-lg">Tp Net</a>
		  </div>
      
          <!-- Navigation starts -->
          <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">         
            <!-- Links -->
            <ul class="nav navbar-nav pull-right">
              <li class="dropdown pull-right">            
                <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                  <i class="fa fa-user"></i> Maestro <b class="caret"></b>              
                </a>
            
                <!-- Dropdown menu -->
                <ul class="dropdown-menu">
                  <li><a href="login.aspx"><i class="fa fa-sign-out"></i> Salir</a></li>
                </ul>
              </li>
            </ul>
          </nav>

        </div>
    </div>


      <header>
        <div class="container">
          <div class="row">


            <div class="col-md-4">
              <!-- Logo. -->
              <div class="logo">
                <h1><a href="index.aspx">TP NET<span class="bold"></span></a></h1>
                
              </div>
            </div>
          </div>
        </div>
      </header>


    <div class="content">

  	    <!-- Sidebar -->
        <div class="sidebar">
            <div class="sidebar-dropdown"><a href="#">Navegación</a></div>

            <!--- Side -->
            <ul id="nav">
              
              <li class="open"><a href="index.aspx"><i class="fa fa-home"></i> Principal</a>
                
              </li>
              <li class="has_sub">
			    <a href="#"><i class="fa fa-list-alt"></i> Carpetas  <span class="pull-right"><i class="fa fa-chevron-right"></i></span></a>
                <ul>
                  <li><a href="carpeta_listar.aspx">Lista de Carpetas</a></li>
                  <li><a href="carpeta_crear.aspx">Crear una Carpeta</a></li>
                </ul>
              </li>  
              <li class="has_sub">
			    <a href="#"><i class="fa fa-file-o"></i> Tareas  <span class="pull-right"><i class="fa fa-chevron-right"></i></span></a>
                <ul>
                  <li><a href="tarea_listar.aspx">Lista de Tareas</a></li>
                  <li><a href="tarea_crear.aspx">Crear una Tarea</a></li>
                  
                </ul>
              </li> 
            </ul>
        </div>

  	  	    <!-- Main bar -->
  	    <div class="mainbar">
      
	        <!-- Page heading -->
	        <div class="page-head">
	          <h2 class="pull-left"><i class="fa fa-home"></i> Inicio</h2>

            <!-- Breadcrumb 
            <div class="bread-crumb pull-right">
              <a href="index.aspx"><i class="fa fa-home"></i> Home</a> 
            </div>

            <div class="clearfix"></div>

	        
	        <!-- Matter -->
</div>-->
	        <div class="matter">
                <div class="container">

                </div>
		    </div>

        </div>

       <!-- principal -->
       <div class="clearfix"></div>

    </div>


    <!-- Footer starts -->
    <footer>
      <div class="container">
        <div class="row">
          <div class="col-md-12">
                <!-- pie -->
                <p class="copy">Trabajo practico .NET | CopyRight La Pandilla </p>
          </div>
        </div>
      </div>
    </footer> 	

    <!-- Scroll to top -->
    <span class="totop"><a href="#"><i class="fa fa-chevron-up"></i></a></span> 

    

    <!-- jQuery -->
    <script src="js/excanvas.min.js"></script>
    <script src="js/jquery.flot.js"></script>
    <script src="js/jquery.flot.resize.js"></script>
    <script src="js/jquery.flot.pie.js"></script>
    <script src="js/jquery.flot.stack.js"></script>

    

    <script src="js/sparklines.js"></script> 
    <script src="js/jquery.cleditor.min.js"></script> 
    <script src="js/bootstrap-datetimepicker.min.js"></script> 
    <script src="js/jquery.onoff.min.js"></script> 
    <script src="js/filter.js"></script> 
    <script src="js/custom.js"></script>
    <script src="js/charts.js"></script> 

    <!-- Script agregado ultimo -->
    <script src="js/reincide.js"></script>

</asp:Content>