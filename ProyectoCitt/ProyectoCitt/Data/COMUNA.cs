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
    
    public partial class COMUNA
    {
        public COMUNA()
        {
            this.PERSONA = new HashSet<PERSONA>();
        }
    
        public decimal IDCOMUNA { get; set; }
        public string NOMBRECOMUNA { get; set; }
        public Nullable<decimal> IDPROVINCIA { get; set; }
    
        public virtual PROVINCIA PROVINCIA { get; set; }
        public virtual ICollection<PERSONA> PERSONA { get; set; }
    }
}
