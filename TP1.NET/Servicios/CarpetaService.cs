using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections;
using System.Data;
using Entidad;


namespace Servicio
{
    public class CarpetaService
    {
        public Boolean crearCarpeta(string nombre, string descripcion, int usuarioid)
        {

            ArrayList sqlParametros = new ArrayList();
            sqlParametros.Add(nombre);
            sqlParametros.Add(descripcion);
            sqlParametros.Add(usuarioid);
            
            Ado _ado = new Ado();
            Boolean resultado = _ado.EjecutarStoredProcedure(false, "ingresar_carpeta", sqlParametros);
            return resultado;
            

        }

        public List<Carpeta> ObtenerCarpetasPorUsuarios(int usuarioid)
        {
            
            ArrayList sqlParametros = new ArrayList();
            sqlParametros.Add(usuarioid);
           
            Ado _ado = new Ado();
            List<Carpeta> resultado = _ado.EjecutarStoredProcedureDataReader<Carpeta>("buscar_carpetas_usuario", sqlParametros);

            if (resultado.Count > 0)
            {
                return resultado;
            }
            else 
            {
                return null;
            }
        }

        public List<Carpeta> TraerTodasLasCarpetas(int usuarioid)
        {
            ArrayList sqlParametros = new ArrayList();
            sqlParametros.Add(usuarioid);

            Ado _ado = new Ado();
            List<Carpeta> resultado = _ado.EjecutarStoredProcedureDataReader<Carpeta>("buscar_todas_carpetas", sqlParametros);

            if (resultado.Count > 0)
            {
                return resultado;
            }
            else
            {
                return null;
            }
        }
    }
}
