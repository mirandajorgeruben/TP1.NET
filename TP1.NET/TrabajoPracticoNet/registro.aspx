<%@ Page MasterPageFile="~/Master.Master" Language="C#" AutoEventWireup="true" CodeBehind="registro.aspx.cs" Inherits="TP.registro" %>
<%@ Register TagPrefix="recaptcha" Namespace="Recaptcha" Assembly="Recaptcha" %>


<asp:Content runat="server" ContentPlaceHolderID="head">
    
    <title>Registracion</title>
    
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderId="Contenido">
    <div class="admin-form">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <!-- Widget starts -->
                <div class="widget wred">
                  <div class="widget-head">
                    <i class="fa fa-lock"></i> Registro 
                  </div>
                  <div class="widget-content">
                    <div class="padd">
                        <!-- Nombre -->
                        <div class="form-group">
                            <asp:Label runat="server" Text="Nombre" CssClass="control-label col-lg-3"></asp:Label>
                            <div class="col-lg-9">
                                <asp:TextBox ID="nombre" runat="server" MaxLength="20" CssClass="form-control"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator id="ControlaNombre" ControlToValidate="nombre" runat="server" ErrorMessage="Ingrese su Nombre"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <!-- Apellido -->
                        <div class="form-group">
                            <asp:Label runat="server" Text="Apellido" CssClass="control-label col-lg-3"></asp:Label>
                            <div class="col-lg-9">
                                <asp:TextBox ID="apellido" runat="server" MaxLength="20" CssClass="form-control"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="ControlaApellido" ControlToValidate="apellido" runat="server" ErrorMessage="Ingrese su Apellido"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <!-- Email -->
                        <div class="form-group">
                            <asp:Label runat="server" Text="Email" CssClass="control-label col-lg-3"></asp:Label>
                            <div class="col-lg-9">
                                <asp:TextBox ID="email" runat="server" MaxLength="20" CssClass="form-control"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="ControlaMail" ControlToValidate="email" runat="server" ErrorMessage="Ingrese su Email"></asp:RequiredFieldValidator>
                                <br />
                                <asp:RegularExpressionValidator ID="MailValido" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email" ErrorMessage="Email Inválido"></asp:RegularExpressionValidator>
                            </div>
                        </div>
    
                        <!-- Contraseña -->
                        <div class="form-group">
                            <asp:Label runat="server" Text="Contraseña" CssClass="control-label col-lg-3"></asp:Label>
                            <div class="col-lg-9">
                                <asp:TextBox ID="password" runat="server" MaxLength="20" TextMode="Password" CssClass="form-control"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="ControlaPassword" ControlToValidate="password" runat="server" ErrorMessage="Ingrese su Contraseña"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" Text="Repita la Contraseña" CssClass="control-label col-lg-3"></asp:Label>
                            <div class="col-lg-9">
                                <asp:TextBox ID="repitepassword" runat="server" MaxLength="20" TextMode="Password" CssClass="form-control"></asp:TextBox>
                                <br />
                                <asp:CompareValidator ID="ComparaPasswords" runat="server" ErrorMessage="Las contraseñas no coinciden" ControlToCompare="password" ControlToValidate="repitepassword"></asp:CompareValidator>
                            </div>
                        </div>

                        <div class="form-group">
                            <asp:Label runat="server" CssClass="control-label col-lg-3"></asp:Label>
                            <div class="col-lg-9">
                            <recaptcha:RecaptchaControl
                              ID="recaptcha"
                              runat="server"
                              Theme="red"
                              PublicKey="6LfmvvMSAAAAAMptEHCMpCFWKj-KH990jRWEpbDM"       
                              PrivateKey="6LfmvvMSAAAAAJ_uYArJoaJ_A82sJt_ltNv0nXmR"
                              />

                               </div>
                        </div>
                        <asp:Label ID="txtcaptcha" runat="server" Text=""></asp:Label>   

                    </div>
                    <!-- Botón enviar -->
                    <div class="form-group">
                        <asp:Label runat="server" Text="" CssClass="control-label col-lg-3"></asp:Label>
                            
                        <div class="col-lg-9">
                            <asp:Button ID="registrar" CssClass="btn btn-sm btn-info" runat="server" Text="Registrarse" OnClick="registrar_Click" />
                            <!-- Validacion -->
                           
                            <asp:Label runat="server" Text="" ID="validaRegistro"></asp:Label>
                        </div>
                    </div>
                  </div>
                  <div class="widget-foot">
                    Si ya esta est&aacute; registrado? <a href="login.aspx">Ingrese</a>
                  </div>
                </div>  
          </div>
        </div>
      </div> 
  </div>
</asp:Content>
