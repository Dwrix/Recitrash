using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Reciclaje.Modelo;


namespace Reciclaje.Controller
{
    public class UsuarioController
    {

        private static RecitrashEntities dbc = new RecitrashEntities();

        public static string addUsuario(string rut, string nombre,  string correo, string contraseña, int idrol)
        {
            try
            {
                Rol rol = dbc.Rol.Find(idrol);
                Usuario usuario = new Usuario()

                {
                    rut = rut,
                    nombre = nombre,
                    correo = correo,
                    contraseña = contraseña,
                    fk_rol = rol.idRol

                };

                dbc.Usuario.Add(usuario);
                dbc.SaveChanges();
                return "Usuario agregado";
            }
            catch (Exception e)
            {
                return "Error:" + " " + e;
            }
            
        }

        public static List<Usuario> getAll()
        {
            var usuario = from m in dbc.Usuario
                          select m;

            return usuario.ToList();
        }

        


    }
}