using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using Entidad;
using Servicio;


namespace TP
{
    public partial class activar_usuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var valueActivacion = Request["CodActivacion"];
            if (String.IsNullOrEmpty(valueActivacion))
            {
                Response.Redirect("~/login.aspx");
            }
            else 
            {
                UsuarioService user = new UsuarioService();
                List<Usuario> usuario = user.ObtenerUsuarioPorCodigoActivacion(valueActivacion);

                if (usuario.Count > 0)
                {
                    //no pasa de los 15 minutos.

                    DateTime FechaCreacion = usuario[0].Fechacreacion;
                    DateTime FechaActual = DateTime.Now;
                    TimeSpan ts = FechaActual - FechaCreacion;
                    double diferenciaEnMinutos = ts.TotalMinutes;

                    if (diferenciaEnMinutos > 15) 
                    {
                        validacionCodigo.Text = "El enlace a Expirado";
                    }
                    else
                    {
                        //Activo Usuario
                        user.ActivarUsuario(usuario[0].IdUsuario);

                        //Creo una carpeta general.
                        CarpetaService carpetaService = new CarpetaService();
                        Boolean creada = carpetaService.crearCarpeta("General","Carpeta General de Tareas",usuario[0].IdUsuario);

                        validacionCodigo.Text = "Activado Correctamente";
                    }

                    

                }
                else 
                {
                    //Código de activacion inexistente
                    validacionCodigo.Text = "¡El código es Inexiste!";
                }
            }
        }
    }
}