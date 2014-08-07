using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidad
{
    public class Carpeta
    {
        public int idcarpeta;

       public int IdCarpeta
        {
            get { return idcarpeta; }
            //set { idcarpeta = value; }
       }

       public int idusuario;

       public int IdUsuario
       {
           get { return idusuario; }
           //set { idusuario = value; }
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

        public string nombreUsuario;

        public string NombreUsuario
        {
            get { return nombreUsuario; }
            set { nombreUsuario = value; }
        }

    }
}
