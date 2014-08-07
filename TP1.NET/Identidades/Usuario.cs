using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidad
{
    public class Usuario
    {
        public int idusuario;

        public int IdUsuario
        {
            get { return idusuario; }
            set { idusuario = value; }
        }

        public string nombre;

        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }

        public string apellido;

        public string Apellido
        {
            get { return apellido; }
            set { apellido = value; }
        }

        public string email;

        public string Email
        {
            get { return email; }
            set { email = value; }
        }


        public string contrasenia;

        public string Contrasenia
        {
            get { return contrasenia; }
            set { contrasenia = value; }
        }

        public int estado;

        public int Estado
        {
            get { return estado; }
            set { estado = value; }
        }


        public DateTime fechacreacion;

        public DateTime Fechacreacion
        {
            get { return fechacreacion; }
            set { fechacreacion = value; }
        }

        public String codigoactivacion;

        public String Codigoactivacion
        {
            get { return codigoactivacion; }
            set { codigoactivacion = value; }
        }
        
    }
}
