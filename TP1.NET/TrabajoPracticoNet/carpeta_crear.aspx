<%@ Page MasterPageFile="~/Master.Master" Language="C#" AutoEventWireup="true" CodeBehind="carpeta_crear.aspx.cs" Inherits="TP.carpeta_crear" %>

<asp:Content runat="server" ContentPlaceHolderID="head">
    
    <title>Creación De Carpetas</title>
    
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderId="Contenido">
    
     <div class="navbar navbar-fixed-top bs-docs-nav" role="banner">
  
        <div class="conjtainer">
          <!-- Menu -->
          <div class="navbar-header">
		      <button class="navbar-toggle btn-navbar" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
			    <span>Menu</span>
		      </button>
		      <!-- Site name for smallar screens -->
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


    <!-- Header starts -->
      <header>
        <div class="container">
          <div class="row">
            <div class="col-md-4">
              <!-- Logo -->
              <div class="logo">
                <h1><a href="index.aspx">TP NET<span class="bold"></span></a></h1>
              </div>

            </div>
          </div>
        </div>
      </header>


    <!-- principal -->

    <div class="content">

  	    <!-- Sidebar -->
        <div class="sidebar">
            <div class="sidebar-dropdown"><a href="#">Navegación</a></div>
            <ul id="nav">
              <!-- Main menu with font awesome icon -->
              <li><a href="index.aspx"><i class="fa fa-home"></i> Inicio</a>
              </li>
              <li class="has_sub open">
			    <a href="#"><i class="fa fa-list-alt"></i> Carpetas  <span class="pull-right"><i class="fa fa-chevron-right"></i></span></a>
                <ul>
                  <li><a href="carpeta_listar.aspx">Lista de Carpetas</a></li>
                  <li><a href="carpeta_crear.aspx">Crear una Carpeta</a></li>
                </ul>
              </li>  
              <li class="has_sub">
			    <a href="tarea_listar.aspx"><i class="fa fa-file-o"></i> Tareas  <span class="pull-right"><i class="fa fa-chevron-right"></i></span></a>
                <ul>
                  <li><a href="tarea_listar.aspx">Lista de Tareas</a></li>
                  <li><a href="tarea_crear.aspx">Crear una Tarea</a></li>
                  
                </ul>
              </li> 
            </ul>
        </div>

  	    <div class="mainbar">
      
	        <!-- Page heading -->
	        <div class="page-head">
	          <h2 class="pull-left"><i class="fa fa-home"></i> Carpetas</h2>

            <!-- Breadcrumb -->
            <div class="bread-crumb pull-right">
              <a href="carpeta_crear.aspx"><i class="fa fa-home"></i> Crear Carpetas</a> 

            </div>

            <div class="clearfix"></div>

	        </div>

	        <div class="matter">
                <div class="container">

                    <!-- Formulario -->
                        <div class="admin-form">
                          <div class="container">

                            <div class="row">
                              <div class="col-md-12">
                                <!-- Widget starts -->
                                    <div class="widget worange">
                                      <!-- Widget head -->
                                      <div class="widget-head">
                                        <i class="fa fa-lock"></i> Crear Carpetas
                                      </div>

                                      <div class="widget-content">
                                        <div class="padd">
                                          <!-- Login form -->
                      
                                            <!-- Nombre -->
                                            <div class="form-group">
                          
                                              <label class="control-label col-lg-3">Nombre</label>
                                              <div class="col-lg-9">
                                                 <asp:TextBox ID="nombreTxt" runat="server" MaxLength="20" CssClass="form-control"></asp:TextBox>
                                              </div>
                                            </div>
                       
                                            <!-- Descripcion -->
                                            <div class="form-group">
                          
                                              <label class="control-label col-lg-3">Descripcion de carpeta</label>
                                              <div class="col-lg-9">
                                                 <asp:TextBox ID="descripcionTxt" runat="server" MaxLength="200" CssClass="form-control"></asp:TextBox>
                                              </div>
                                            </div>
                        
                                            <!-- Guardar -->
                                            <div class="form-group">
                                                <div class="col-lg-9 col-lg-offset-3">
							                        <asp:Button ID="GuardarCarpeta" CssClass="btn btn-info btn-sm" runat="server" Text="Guardar Carpeta" OnClick="ingreso_Click"  />
                                                    <br />
                                                    <asp:Label runat="server" Text="" ID="validacion"></asp:Label>
						                        </div>
                                            </div>
                                            <br />
				  
				                        </div>
                                        </div>
              
                                        <div class="widget-foot">
                                           <a href="carpeta_listar.aspx">Lista Carpetas</a>
                                        </div>
                                    </div>  
                              </div>
                            </div>
                          </div> 
                        </div>
                    <!-- End Formulario -->

                </div>
		    </div>

		    <!-- Matter ends -->

        </div>

       <!-- Mainbar ends -->
       <div class="clearfix"></div>

    </div>
    <!-- Content ends -->

    <!-- Footer starts -->
    <footer>
      <div class="container">
        <div class="row">
          <div class="col-md-12">
              
                <p class="copy">Trabajo practico .NET | CopyRight La Pandilla </p>
          </div>
        </div>
      </div>
    </footer> 	

    <!-- Scroll to top -->
    <span class="totop"><a href="#"><i class="fa fa-chevron-up"></i></a></span> 

    


</asp:Content>
