
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Reciclaje.Modelo;

namespace Reciclaje.Controller
{
    public class SugerenciaController
    {
        //instanciar el conteto (database context)

        private static RecitrashEntities dbc = new RecitrashEntities();

        //metodos de clase
        public static string addSugerencia(string asunto, int idtipo,
            System.DateTime fecha, string descripcion)
        {
            Tema tema = dbc.Tema.Find(idtipo);
          

            try
            {
                Sugerencia sugerencia = new Sugerencia()
                {
                    asunto = asunto,
                    fk_tema = tema.idtipo,
                    fecha = fecha,
                    descripcion = descripcion,
                    
                };

                dbc.Sugerencia.Add(sugerencia);
                dbc.SaveChanges();
                return "Sugerencia Agregada";
            }
            catch (Exception e)
            {
                return "Error:" + " " + e;
            }
            
        }
        //Buscar Maquinaria

        public static Sugerencia findSugerencia(int idsugerencia)
        {
            return dbc.Sugerencia.Find(idsugerencia);
        }

        //obtener lista
        public static List<Sugerencia> getAll()
        {
            var sugerencia = from s in dbc.Sugerencia
                             select s;
            return sugerencia.ToList();
        }

        

        //Modificar

        public static string editSugerencia(int idsugerencia, string asunto,
             string descripcion)
        {
            Sugerencia sugerencia = dbc.Sugerencia.Find(idsugerencia);
            
            try
            {
                sugerencia.asunto = asunto;
                sugerencia.descripcion = descripcion;

                dbc.SaveChanges();
                return "Datos Modificados";
               
            }
            catch (Exception e)
            {
                return "Error:" + " " + e;
            }

        }

        // Eliminar

        public static string removeSugerencia(int idsugerencia)
        {
            Sugerencia sugerencia = dbc.Sugerencia.Find(idsugerencia);

            dbc.Sugerencia.Remove(sugerencia);
            dbc.SaveChanges();
            return "Sugerencia Eliminado";

        }



    }
}