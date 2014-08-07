using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Servicio;
using Entidad;

namespace TP
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["idUsuario"] = null;
        }
        protected void ingreso_Click(object sender, EventArgs e)
        {
            var usuario = user.Text;
            var contrasenia = pass.Text;

            UsuarioService userService = new UsuarioService();
            Int32 idUser = userService.LoguearUsuario(usuario, contrasenia);
            if (idUser!=0)
            {
                Session["idUsuario"] = idUser;
                validacion.Text = "Ingreso Correcto";
                Response.Redirect("~/index.aspx");
            }
            else 
            { 
                validacion.Text = "Usuario y/o contraseña es incorrecta.";
            }
           

        }
    }
}