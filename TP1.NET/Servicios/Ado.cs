using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using System.Collections.Generic;
using System.Reflection;
namespace Servicio
{


    /// <summary>
    // Clases de ADO.NET utilizadas:
    // - SQLConnection
    // - SqlConnectionStringBuilder
    // - SQLCommand
    // - SqlParameter
    // - SqlCommandBuilder

    // Ejemplo 5:
    // - SQLDataAdapter
    // - DataSet

    // Ejemplo 6:
    // - DataTable
    // - DataReader
    /// </summary>

    public class Ado
    {
        string sConexion;
        SqlCommand sqlComm;
        SqlConnection sqlConn;
        SqlDataAdapter sqlDA;
        DataTable dtResultado;
        SqlTransaction transaccion;
        Int32 cantidadParametros = 0;
        Int32 numeroDeRegistro = 0;

        public Ado()
        {

        }

        private bool Conectar()
        {
            sConexion = CadenaConexion();

            if (sqlConn == null)
                sqlConn = new SqlConnection(sConexion);

            if (sqlConn.State == ConnectionState.Closed)
                sqlConn.Open();


            return (sqlConn.State == ConnectionState.Open);

        }

        private string CadenaConexion()
        {
            SqlConnectionStringBuilder csb = new SqlConnectionStringBuilder();
            csb.DataSource = @"JORGE-ACER\SQLEXPRESS2008";
            csb.InitialCatalog = "TP20141C";
            csb.IntegratedSecurity = true;

            return csb.ConnectionString;
        }

        private bool ComenzarTransaccion()
        {
            try
            {
                transaccion = sqlConn.BeginTransaction();
            }
            catch (SqlException test)
            {
                return false;
            }

            return true;

        }

        private bool FinalizarTransaccion()
        {
            try
            {
                transaccion.Commit();
            }
            catch (SqlException test)
            {
                transaccion.Rollback();
                return false;
            }

            return true;

        }

        private bool CancelarTransaccion()
        {
            try
            {
                transaccion.Rollback();
            }
            catch (SqlException test)
            {
                return false;
            }

            return true;

        }

        //ejemplos incluidos en archivo

        #region Ejemplo 5
        public bool EjecutarStoredProcedure(bool tieneTransaccion, string nombreSP, ArrayList sqlParametros)
        {
            if (Conectar())
            {

                sqlComm = new SqlCommand();		// Instancio el objeto Command de la clase
                sqlComm.Connection = sqlConn;	    // Asigno la conexión activa al Command

                sqlComm.CommandType = CommandType.StoredProcedure;	// Indico que se trata de un procedimiento almacenado
                sqlComm.CommandText = nombreSP;		                // Indico cual es el stored procedure

                if (tieneTransaccion)
                    sqlComm.Transaction = transaccion;

                SqlCommandBuilder.DeriveParameters(sqlComm);       // Obtengo los Parametros del SP del SQLServer

                Int32 cantidadParametros;

                if (sqlParametros == null)
                    cantidadParametros = 0;
                else
                    cantidadParametros = sqlParametros.Count;

                if (cantidadParametros == sqlComm.Parameters.Count - 1)
                {
                    for (int i = 1; i <= sqlComm.Parameters.Count - 1; i++)
                    {
                        sqlComm.Parameters[i].Value = sqlParametros[i - 1];		// Agrego el parámetro sqlConn el valor del cod de la provincia para obtener sus localidades
                    }

                    sqlComm.ExecuteNonQuery();

                    return true;
                }

            }

            return false;
        }

        public DataSet DevolverDatos()
        {

            DataSet ds = new DataSet();

            sqlDA = new SqlDataAdapter(sqlComm);

            sqlDA.Fill(ds);

            return ds;


        }
        #endregion Ejemplo 5

        #region Ejemplo 6
        /*
        public bool EjecutarStoredProcedureDataReader(String nombreSP, ArrayList sqlParametros)
        {
            if (Conectar())
            {

                sqlComm = new SqlCommand();		// Instancio el objeto Command de la clase
                sqlComm.Connection = sqlConn;	    // Asigno la conexión activa al Command

                sqlComm.CommandType = CommandType.StoredProcedure;	// Indico que se trata de un procedimiento almacenado
                sqlComm.CommandText = nombreSP;		                // Indico cual es el stored procedure


                SqlCommandBuilder.DeriveParameters(sqlComm);       // Obtengo los Parametros del SP del SQLServer

                if (sqlParametros == null)
                    cantidadParametros = 0;
                else
                    cantidadParametros = sqlParametros.Count;

                if (cantidadParametros == sqlComm.Parameters.Count - 1)
                {
                    for (int i = 1; i <= sqlComm.Parameters.Count - 1; i++)
                    {
                        sqlComm.Parameters[i].Value = sqlParametros[i - 1];		// Agrego el parámetro sqlConn el valor del cod de la provincia para obtener sus localidades
                    }

                    numeroDeRegistro = 0;

                    dtResultado = new DataTable();

                    dtResultado.Load(sqlComm.ExecuteReader(CommandBehavior.CloseConnection));

                    return true;
                }

            }

            return false;
        }
        */

        public List<T> EjecutarStoredProcedureDataReader<T>(String nombreSP, ArrayList sqlParametros)
        {
            List<T> list = new List<T>();
            T obj = default(T);

            if (Conectar())
            {

                sqlComm = new SqlCommand();		// Instancio el objeto Command de la clase
                sqlComm.Connection = sqlConn;	    // Asigno la conexión activa al Command

                sqlComm.CommandType = CommandType.StoredProcedure;	// Indico que se trata de un procedimiento almacenado
                sqlComm.CommandText = nombreSP;		                // Indico cual es el stored procedure


                SqlCommandBuilder.DeriveParameters(sqlComm);       // Obtengo los Parametros del SP del SQLServer

                if (sqlParametros == null)
                    cantidadParametros = 0;
                else
                    cantidadParametros = sqlParametros.Count;

                if (cantidadParametros == sqlComm.Parameters.Count - 1)
                {
                    for (int i = 1; i <= sqlComm.Parameters.Count - 1; i++)
                    {
                        sqlComm.Parameters[i].Value = sqlParametros[i - 1];		// Agrego el parámetro sqlConn el valor del cod de la provincia para obtener sus localidades
                    }

                    numeroDeRegistro = 0;

                    dtResultado = new DataTable();

                    SqlDataReader reader = sqlComm.ExecuteReader(CommandBehavior.CloseConnection);

                    while (reader.Read())
                    {
                        obj = Activator.CreateInstance<T>();
                        foreach (PropertyInfo prop in obj.GetType().GetProperties())
                        {
                            if (!object.Equals(reader[prop.Name], DBNull.Value))
                            {
                                prop.SetValue(obj, reader[prop.Name], null);
                            }
                        }
                        list.Add(obj);
                    }
                    
                }

            }

            return list;
        }
        public DataTable DevolverDatosRapido()
        {

            return (dtResultado);	// Retorno el DataSet interno de la clase


        }

        #endregion Ejemplo 6

        #region Ejemplo 7

        public string DevolverRegistro()
        {
            string registro = String.Empty;

            if (dtResultado.Rows.Count > numeroDeRegistro)
            {
                for (int iColumna = 0; iColumna <= dtResultado.Columns.Count - 1; iColumna++)
                {
                    if (registro == String.Empty)
                        registro += dtResultado.Rows[numeroDeRegistro][iColumna].ToString();
                    else
                        registro += "|" + dtResultado.Rows[numeroDeRegistro][iColumna].ToString();
                }

                numeroDeRegistro++;
            }

            return (registro);	// Retorno el Registro Actual


        }

        #endregion Ejemplo 7

    }
}
