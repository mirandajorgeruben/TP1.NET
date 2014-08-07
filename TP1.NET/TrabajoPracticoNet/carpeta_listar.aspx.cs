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
    public partial class carpeta_listar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["idUsuario"] != null)
            {
                //Está logueado.
                CarpetaService carpetaService = new CarpetaService();
                List<Carpeta> carpetas = carpetaService.ObtenerCarpetasPorUsuarios((int)Session["idUsuario"]);
                ListaDeCarpetas.DataSource = carpetas;
                ListaDeCarpetas.DataBind();
            }
            else
            {
                //No hay sesión de usuario.
                Response.Redirect("~/login.aspx");
            }
        }
    }
}