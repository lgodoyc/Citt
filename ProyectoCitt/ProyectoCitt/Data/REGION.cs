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
    
    public partial class REGION
    {
        public REGION()
        {
            this.PROVINCIA = new HashSet<PROVINCIA>();
        }
    
        public decimal IDREGION { get; set; }
        public string NOMBREREGION { get; set; }
    
        public virtual ICollection<PROVINCIA> PROVINCIA { get; set; }
    }
}
