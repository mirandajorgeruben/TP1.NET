using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidad;
using System.Collections;

namespace Servicio
{
    public class TareaService
    {

        public Boolean crearTarea(string nombre, string descripcion, int estado, int prioridad, int idusuario, int idcarpeta)
        {
            ArrayList sqlParametros = new ArrayList();
            sqlParametros.Add(nombre);
            sqlParametros.Add(descripcion);
            sqlParametros.Add(estado);
            sqlParametros.Add(prioridad);
            sqlParametros.Add(idusuario);
            sqlParametros.Add(idcarpeta);

            Ado _ado = new Ado();
            Boolean resultado = _ado.EjecutarStoredProcedure(false, "ingresar_tarea", sqlParametros);
            return resultado;
            

        }

        public List<Tarea> ObtenerTareasPorUsuarios(int usuarioid)
        {

            ArrayList sqlParametros = new ArrayList();
            sqlParametros.Add(usuarioid);

            Ado _ado = new Ado();
            List<Tarea> resultado = _ado.EjecutarStoredProcedureDataReader<Tarea>("buscar_tareas_usuario", sqlParametros);

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
