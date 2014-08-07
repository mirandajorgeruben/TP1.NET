using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidad;
using Servicio;
using System.Collections;

namespace TP
{
    public partial class tarea_crear : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["idUsuario"] != null)
            {
                if (!IsPostBack)
                {
                    CarpetaService carpetaService = new CarpetaService();
                    List<Carpeta> carpetas = carpetaService.TraerTodasLasCarpetas((int)Session["idUsuario"]);


                    carpetaSlct.DataSource = carpetas;
                    carpetaSlct.DataValueField = "IdCarpeta";
                    carpetaSlct.DataTextField = "Nombre";
                    carpetaSlct.DataBind();
                }
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
            var estado = estadoSlct.Value;
            var prioridad = prioridadSlct.Value;
            var carpeta = carpetaSlct.Text;
            


            TareaService tarea = new TareaService();
            Boolean creada = tarea.crearTarea(nombre, descripcion, Convert.ToInt32(estado), Convert.ToInt32(prioridad), (int)Session["idUsuario"], Convert.ToInt32(carpeta));
            if (creada)
            {
                validacion.Text = "Tarea " + nombre + " creada Correctamente.";
            }
            else
            {
                validacion.Text = "problemas al crear la tarea";
            }
        }
    }
}