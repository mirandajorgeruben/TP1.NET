using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using Servicio;
using Entidad;

namespace TP
{
    public partial class tarea_listar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["idUsuario"] != null)
            {

                //Está logueado.
                TareaService tareaService = new TareaService();
                List<Tarea> tarea = tareaService.ObtenerTareasPorUsuarios((int)Session["idUsuario"]);
                ListaDeTareas.DataSource = tarea;
                ListaDeTareas.DataBind();
            }
            else 
            {
                //No hay sesión de usuario.
                Response.Redirect("~/login.aspx");
            }
        }
    }
}