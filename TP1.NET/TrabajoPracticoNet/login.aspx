<%@ Page MasterPageFile="~/Master.Master" Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="TP.login" %>

<asp:Content runat="server" ContentPlaceHolderID="head">
    
    <title>Inicio Sesion</title>
    
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
                    <i class="fa fa-lock"></i> Ingreso 
                  </div>

                  <div class="widget-content">
                    <div class="padd">
                      <!-- Login form -->
                      
                        <!-- Email -->
                        <div class="form-group">
                          
                          <label class="control-label col-lg-3" for="inputEmail">E-mail</label>
                          <div class="col-lg-9">
                             <asp:TextBox ID="user" runat="server" MaxLength="20" CssClass="form-control"></asp:TextBox>
                             <br />
                             <asp:RequiredFieldValidator ID="ValidaEmailVacio" ControlToValidate="user" runat="server" ErrorMessage="Ingrese su Email"></asp:RequiredFieldValidator>
                             <br />
                             <asp:RegularExpressionValidator ID="MailValido" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="user" ErrorMessage="Usuario Inválido"></asp:RegularExpressionValidator>
                          </div>
                        </div>
                        <!-- Password -->
                        <div class="form-group">
                          <label class="control-label col-lg-3" for="inputPassword">Contraseña</label>
                          <div class="col-lg-9">
                            <asp:TextBox ID="pass" runat="server" Textmode="password" MaxLength="20"  CssClass="form-control"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="ValidaPassVacia" ControlToValidate="pass" runat="server" ErrorMessage="Ingrese su Contraseña"></asp:RequiredFieldValidator>
                          </div>
                        </div>
                        <!-- Registrarse -->
                        <div class="form-group">
                            <div class="col-lg-9 col-lg-offset-3">
							    <asp:Button ID="Button1" CssClass="btn btn-info btn-sm" runat="server" Text="Ingresar" OnClick="ingreso_Click"  />
                                <asp:Label runat="server" Text="" ID="validacion"></asp:Label>
						    </div>
                        </div>
                        <br />
                      
				  
				    </div>
                    </div>
              
                    <div class="widget-foot">
                        Usted no est&aacute; registrado? <a href="registro.aspx">Ingrese aqu&iacute;</a>
                    </div>
                </div>  
          </div>
        </div>
      </div> 
    </div>
</asp:Content>
