using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Reciclaje.Modelo;


namespace Reciclaje.Controller
{
    public class LoginController
    {
        public static Usuario login(string email, string password)
        {

            foreach (Usuario usuario in UsuarioController.getAll())
            {
                if (usuario.correo.Equals(email))
                {
                    if (usuario.contraseña.Equals(password))
                    {
                        return usuario;
                    }
                    else
                    {
                        return null;
                    }
                }

            }
            return null;




        }

    }
}