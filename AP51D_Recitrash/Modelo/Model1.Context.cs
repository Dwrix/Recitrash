﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Reciclaje.Modelo
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class RecitrashEntities : DbContext
    {
        public RecitrashEntities()
            : base("name=RecitrashEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Contenedor> Contenedor { get; set; }
        public virtual DbSet<Postulacion> Postulacion { get; set; }
        public virtual DbSet<Rol> Rol { get; set; }
        public virtual DbSet<Sugerencia> Sugerencia { get; set; }
        public virtual DbSet<Tema> Tema { get; set; }
        public virtual DbSet<Usuario> Usuario { get; set; }
    }
}
