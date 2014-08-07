<%@ Page MasterPageFile="~/Master.Master" Language="C#" AutoEventWireup="true" CodeBehind="tarea_crear.aspx.cs" Inherits="TP.tarea_crear" %>

<asp:Content runat="server" ContentPlaceHolderID="head">
    
    <title>Creación de tareas</title>
    
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
              <li class="has_sub open">
			    <a href="#"><i class="fa fa-file-o"></i> Tareas  <span class="pull-right"><i class="fa fa-chevron-right"></i></span></a>
                <ul>
                  <li><a href="tarea_listar.aspx">Lista de Tareas</a></li>
                  <li><a href="tarea_crear.aspx">Crear una Tarea</a></li>
                  
                </ul>
              </li> 
            </ul>
        </div>

  	    <div class="mainbar">

	        <div class="page-head">
	          <h2 class="pull-left"><i class="fa fa-home"></i> Tareas</h2>

            <div class="bread-crumb pull-right">
              <a href="tarea_crear.aspx"><i class="fa fa-home"></i> Crear Tareas</a> 

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
                                        <i class="fa fa-lock"></i> Crear Tareas
                                      </div>

                                      <div class="widget-content">
                                        <div class="padd">
 
                                            <div class="form-group">
                          
                                              <label class="control-label col-lg-3">Nombre</label>
                                              <div class="col-lg-9">
                                                 <asp:TextBox ID="nombreTxt" runat="server" MaxLength="20" CssClass="form-control"></asp:TextBox>
                                              </div>
                                            </div>
                       
                                            <!-- Descripcion -->
                                            <div class="form-group">
                          
                                              <label class="control-label col-lg-3">Descripcion de Tarea</label>
                                              <div class="col-lg-9">
                                                 <asp:TextBox ID="descripcionTxt" runat="server" MaxLength="200" CssClass="form-control"></asp:TextBox>
                                              </div>
                                            </div>

                                            <!-- Estado -->
                                            <div class="form-group">
                          
                                              <label class="control-label col-lg-3">Estado</label>
                                              <div class="col-lg-9">
                                                 <select runat="server" class="textbox" id="estadoSlct">
                                                      <option value="1">Pendiente</option>
                                                      <option value="2">Finalizada</option>
                                                 </select>
                                              </div>
                                            </div>

                                            <!-- Prioridad -->
                                            <div class="form-group">
                          
                                              <label class="control-label col-lg-3">Prioridad</label>
                                              <div class="col-lg-9">
                                                 <select runat="server" class="textbox" id="prioridadSlct">
                                                      <option value="1">Urgente</option>
                                                      <option value="2">Alta</option>
                                                      <option value="3">Media</option>
                                                      <option value="4">Baja</option>
                                                 </select>
                                              </div>
                                            </div>

                                            <!-- Carpeta -->
                                            <div class="form-group">
                                              <label class="control-label col-lg-3">Elegir Carpeta</label>
                                              <div class="col-lg-9">
                                                 
                                                 <asp:DropDownList ID="carpetaSlct" runat="server">
                                                 <asp:ListItem Value="0"></asp:ListItem>
                                                 </asp:DropDownList>
                                              </div>
                                            </div>
                        
                                            <!-- Guardar Button -->
                                            <div class="form-group">
                                                <div class="col-lg-9 col-lg-offset-3">
							                        <asp:Button ID="GuardarTarea" CssClass="btn btn-info btn-sm" runat="server" Text="Guardar" OnClick="ingreso_Click"  />
                                                    <br />
                                                    <asp:Label runat="server" Text="" ID="validacion"></asp:Label>
						                        </div>
                                            </div>
                                            <br />
				  
				                        </div>
                                        </div>
              
                                        <div class="widget-foot">
                                           <a href="tarea_listar.aspx">Lista de Tareas</a>
                                        </div>
                                    </div>  
                              </div>
                            </div>
                          </div> 
                        </div>
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

    <!-- Scroll to top -->
    <span class="totop"><a href="#"><i class="fa fa-chevron-up"></i></a></span> 

    


</asp:Content>