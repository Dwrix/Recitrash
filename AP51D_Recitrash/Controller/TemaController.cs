using Reciclaje.Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Reciclaje.Controller
{
    public class TemaController
    {
        private static RecitrashEntities dbc = new RecitrashEntities();

        // obtener lista tema(sugrencia/reclamo)
        public static List<Tema> getAll()
        {
            var Tema = from m in dbc.Tema
                       select m;

            return Tema.ToList();
        }
    }
}