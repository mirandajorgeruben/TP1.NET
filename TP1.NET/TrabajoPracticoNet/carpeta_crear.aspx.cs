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
    public partial class carpeta_crear : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["idUsuario"] != null)
            {
                //Está logueado.
                //Label1.Text = Session["idUsuario"].ToString();
            }
            else
            {
                //No hay sesión de usuario.
                Response.Redirect("~/login.aspx");
            }
        }

        

        protected void ingreso_Click(object sender, EventArgs e)
        {
            var nombre = nombreTxt.Text;
            var descripcion = descripcionTxt.Text;

            CarpetaService carpeta = new CarpetaService();
            Boolean creada = carpeta.crearCarpeta(nombre, descripcion, (int)Session["idUsuario"]);
            if (creada) 
            {
                validacion.Text = "Carpeta "+ nombre+" creada correctamente.";
            }
            else 
            {
                validacion.Text = "Problema al crear la tarea";
            }
        }
    }
}