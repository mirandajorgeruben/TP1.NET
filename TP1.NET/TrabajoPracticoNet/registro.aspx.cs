using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidad;
using Servicio;

namespace TP
{
    public partial class registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected string ValidacionRegistro = "";
        protected void registrar_Click(object sender, EventArgs e)
        {
            var nombreTextBox = nombre.Text;
            var apellidoTextBox = apellido.Text;
            var emailTextBox = email.Text;
            var passwordTextBox = password.Text;

            UsuarioService user = new UsuarioService();

            List<Usuario> usuario = user.ObtenerUsuarioPorMail(emailTextBox);

            if (usuario.Count > 0)
            {
                //Existe, verifico si está activo.
                if (usuario[0].estado == 0)
                {
                    //Está inactivo, debo actualizar el registro.
                    user.ActualizarUsuario(emailTextBox,nombreTextBox,apellidoTextBox,passwordTextBox);
                    ValidacionRegistro = "Usuario Actualizado.";
                    validaRegistro.Text = ValidacionRegistro;
                }
                else 
                { 
                    //Está activo, no se permite registrar.
                    ValidacionRegistro = "La cuenta ingresada existe en nuestra base de datos.";
                    validaRegistro.Text = ValidacionRegistro;
                }
            }
            else { 
                //No existe.
               
                user.insertarUsuario(emailTextBox, nombreTextBox, apellidoTextBox, passwordTextBox);
                ValidacionRegistro = "Revise su cuenta de Email para continuar con la registración.";
                validaRegistro.Text = ValidacionRegistro;
            }

            if (recaptcha.IsValid)
            {
                txtcaptcha.Text = "El captcha ingresado es valido";
            }
            else
            {
                txtcaptcha.Text = "El captcha ingresado no es valido";
            }
            

        }

        
    }

    
}