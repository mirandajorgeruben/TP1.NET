<%@ Page MasterPageFile="~/Master.Master" Language="C#" AutoEventWireup="true" CodeBehind="tarea_listar.aspx.cs" Inherits="TP.tarea_listar" %>

<asp:Content runat="server" ContentPlaceHolderID="head">
    
    <title>Lista de tareas</title>
    
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderId="Contenido">
    
     <div class="navbar navbar-fixed-top bs-docs-nav" role="banner">
  
        <div class="conjtainer">
          <!-- boton principal -->
          <div class="navbar-header">
		      <button class="navbar-toggle btn-navbar" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
			    <span>Menu</span>
		      </button>
		      <!-- Site name for smallar screens -->
		      <a href="index.aspx" class="navbar-brand hidden-lg">Trabajo practico .NET</a>
		  </div>
      
          <!-- Navigation starts -->
          <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">         
            <!-- Links -->
            <ul class="nav navbar-nav pull-right">
              <li class="dropdown pull-right">            
                <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                  <i class="fa fa-user"></i> Maestro <b class="caret"></b>              
                </a>
            
                <ul class="dropdown-menu">
                  <li><a href="login.aspx"><i class="fa fa-sign-out"></i> Salir</a></li>
                </ul>
              </li>
            </ul>
          </nav>

        </div>
    </div>


    <!-- cabezera -->
      <header>
        <div class="container">
          <div class="row">

            <!-- Aca El Logo -->
            <div class="col-md-4">
              
              <div class="logo">
                <h1><a href="index.aspx">Trabjo Practico .NET<span class="bold"></span></a></h1>
              </div>
            </div>
          </div>
        </div>
      </header>
    <div class="content">
        <div class="sidebar">
            <div class="sidebar-dropdown"><a href="#">Navegación</a></div>
            <ul id="nav">
              
              <li><a href="index.aspx"><i class="fa fa-home"></i> Inicio</a>
             
              </li>
              <li class="has_sub">
			    <a href="carpeta_listar.aspx"><i class="fa fa-list-alt"></i> Carpetas  <span class="pull-right"><i class="fa fa-chevron-right"></i></span></a>
                <ul>
                  <li><a href="carpeta_listar.aspx">Lista de Carpetas</a></li>
                  <li><a href="carpeta_crear.aspx">Crear una Carpeta</a></li>
                </ul>
              </li>  
              <li class="has_sub  open">
			    <a href="#"><i class="fa fa-file-o"></i> Tareas  <span class="pull-right"><i class="fa fa-chevron-right"></i></span></a>
                <ul>
                  <li><a href="tarea_listar.aspx">Lista de Tareas</a></li>
                  <li><a href="tarea_crear.aspx">Crear un Tarea</a></li>
                  
                </ul>
              </li> 
            </ul>
        </div>


  	  	    <!-- Main -->
  	    <div class="mainbar">
	        <div class="page-head">
	          <h2 class="pull-left"><i class="fa fa-home"></i> Tareas</h2>

            <div class="bread-crumb pull-right">
              <a href="carpeta_listar.aspx"><i class="fa fa-home"></i> Lista de Tareas</a> 
            </div>

            <div class="clearfix"></div>

	        </div>

	        <div class="matter">
                <div class="container">
                    <asp:GridView ID="ListaDeTareas" runat="server" CssClass="dataTable" Width="100%"></asp:GridView>
                </div>
		    </div>

        </div>

       <div class="clearfix"></div>

    </div>
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
    <span class="totop"><a href="#"><i class="fa fa-chevron-up"></i></a></span> 

    


</asp:Content>
