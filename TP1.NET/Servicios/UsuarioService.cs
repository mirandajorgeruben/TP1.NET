using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Collections;
using Entidad;
using System.Security.Cryptography;
using System.Net.Mail;

namespace Servicio
{
    public class UsuarioService
    {
        public int LoguearUsuario(string usuario, string password)
        {
            ArrayList sqlParametros = new ArrayList();
            sqlParametros.Add(usuario);
            sqlParametros.Add(GetMD5(password));

            Ado _ado = new Ado();
            List<Usuario> resultado = _ado.EjecutarStoredProcedureDataReader<Usuario>("buscar_usuario_login", sqlParametros);

            if (resultado.Count > 0)
            {

                return resultado[0].IdUsuario;
            }
            else
            {
                return 0;
            }

        }

        public List<Usuario> ObtenerUsuarioPorMail(string email)
        {
            ArrayList sqlParametros = new ArrayList();
            sqlParametros.Add(email);
            
            Ado _ado = new Ado();
            List<Usuario> resultado = _ado.EjecutarStoredProcedureDataReader<Usuario>("buscar_usuario_mail", sqlParametros);

            return resultado;

        }

        public void ActualizarUsuario(string email, string nombre, string apellido, string password)
        {
            ArrayList sqlParametros = new ArrayList();
            sqlParametros.Add(email);
            sqlParametros.Add(nombre);
            sqlParametros.Add(apellido);
            sqlParametros.Add(GetMD5(password));
            Ado _ado = new Ado();
            Boolean resultado = _ado.EjecutarStoredProcedure(false, "actualizar_usuario", sqlParametros);
            return;
        }

        
        public void insertarUsuario(string email, string nombre, string apellido, string password)
        {
            ArrayList sqlParametros = new ArrayList();
            sqlParametros.Add(email);
            sqlParametros.Add(nombre);
            sqlParametros.Add(apellido);
            sqlParametros.Add(GetMD5(password));
            sqlParametros.Add(GetMD5(email));


            Ado _ado = new Ado();
            Boolean resultado = _ado.EjecutarStoredProcedure(false, "ingresar_usuario", sqlParametros);

            if (resultado)
            {
                this.enviarMail(email, nombre, apellido);
            }
            
            return;
        }

        public static string GetMD5(string str)
        {
            MD5 md5 = MD5CryptoServiceProvider.Create();
            ASCIIEncoding encoding = new ASCIIEncoding();
            byte[] stream = null;
            StringBuilder sb = new StringBuilder();
            stream = md5.ComputeHash(encoding.GetBytes(str));
            for (int i = 0; i < stream.Length; i++) sb.AppendFormat("{0:x2}", stream[i]);
            return sb.ToString();
        }

        public List<Usuario> ObtenerUsuarioPorCodigoActivacion(string CodigoActivacion)
        { 
            
            ArrayList sqlParametros = new ArrayList();
            sqlParametros.Add(CodigoActivacion);
            
            Ado _ado = new Ado();
            List<Usuario> resultado = _ado.EjecutarStoredProcedureDataReader<Usuario>("buscar_usuario_codigoactivacion", sqlParametros);

            return resultado;
   
        }

        public Boolean ActivarUsuario(int idUsuario)
        {
            ArrayList sqlParametros = new ArrayList();
            sqlParametros.Add(idUsuario);
           
            Ado _ado = new Ado();
            Boolean resultado = _ado.EjecutarStoredProcedure(false, "activar_usuario", sqlParametros);
            return true;
        }

        protected void enviarMail(string email, string nombre, string apellido)
        {
            
            MailMessage message = new MailMessage();
            message.IsBodyHtml = true;
            message.From = new MailAddress("progweb3@gmail.com");
            message.To.Add(new MailAddress("mirandajorgeruben@gmail.com"));
            message.Subject = "Registro en TP NET";
            message.Body = "Hola " + nombre + " " + apellido + ". Para activar la cuenta ingresa en href=activar_usuario.aspx?CodActivacion='" + GetMD5(email)+".";

            SmtpClient client = new SmtpClient("smtp.gmail.com");
            client.Port = 587;
            client.Credentials = new System.Net.NetworkCredential("progweb3@gmail.com", "lapandilla");
            client.EnableSsl = true;
            client.Send(message);

        }
    }
}
