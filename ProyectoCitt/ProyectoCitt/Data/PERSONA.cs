//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ProyectoCitt.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class PERSONA
    {
        public PERSONA()
        {
            this.NOTAS = new HashSet<NOTAS>();
        }
    
        public string RUT { get; set; }
        public string NOMBRES { get; set; }
        public string APELLIDOPATERNO { get; set; }
        public string APELLIDOMATERNO { get; set; }
        public string CORREO { get; set; }
        public Nullable<decimal> IDCOMUNA { get; set; }
        public Nullable<decimal> IDUSUARIO { get; set; }
    
        public virtual COMUNA COMUNA { get; set; }
        public virtual ICollection<NOTAS> NOTAS { get; set; }
        public virtual USUARIO USUARIO { get; set; }
    }
}