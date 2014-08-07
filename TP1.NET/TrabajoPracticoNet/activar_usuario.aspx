<%@ Page MasterPageFile="~/Master.Master" Language="C#" AutoEventWireup="true" CodeBehind="activar_usuario.aspx.cs" Inherits="TP.activar_usuario" %>

<asp:Content runat="server" ContentPlaceHolderID="head">
    
    <title>Activacion del Usuario</title>
    
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderId="Contenido">
    
    <!-- Form area -->
    <div class="admin-form">
      <div class="container">

        <div class="row">
          <div class="col-md-12">
            <!-- Widget starts -->
                <div class="widget worange">
                  <!-- Widget head -->
                  <div class="widget-head">
                    <i class="fa fa-lock"></i> 
                    <asp:Label ID="validacionCodigo" runat="server" Text="Label"></asp:Label>
                  </div>

                  <div class="widget-content">
                    <div class="padd">
                       <a href="login.aspx">Login</a> |  <a href="registro.aspx">Registro</a>
                    </div>
                  </div>
                </div>  
          </div>
        </div>
      </div> 
    </div>
</asp:Content>