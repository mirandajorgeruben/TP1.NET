using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace Entidad
{
    public class Tarea
    {
        public int idtarea;

        public int IdTarea
        {
            get { return idtarea; }
            set { idtarea = value; }
        }

       
        public string nombre;

        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }

        public string descripcion;

        public string Descripcion
        {
            get { return descripcion; }
            set { descripcion = value; }
        }

        public DateTime fechafin;

        public DateTime FechaFin
        {
            get { return fechafin; }
            set { fechafin = value; }
        }

       
        public string nombrePrioridad;

        public string NombrePrioridad
        {
            get { return nombrePrioridad; }
            set { nombrePrioridad = value; }
        }


        
        public string nombreEstado;
        public string NombreEstado
        {
            get { return nombreEstado; }
            set { nombreEstado = value; }
        }
    }
}
