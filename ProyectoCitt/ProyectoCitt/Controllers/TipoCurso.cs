using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ProyectoCitt.Data;

namespace ProyectoCitt.Controllers
{
    public class TipoCurso
    {
        public int idTipoCurso { get; set; }
        public string descripcion { get; set; }
        public IList<TipoCurso> listado { get; set; }

        public TipoCurso()
        {
            idTipoCurso = default(int);
            descripcion = string.Empty;
        }

        public bool readAll()
        {
            listado = new List<TipoCurso>();
            foreach (var item in Conexion.entities.TIPO_CURSO.ToList())
            {
                TipoCurso tipoCurso = new TipoCurso();
                this.idTipoCurso = Convert.ToInt32(item.IDTIPOCURSO);
                this.descripcion = item.DESCRIPCION;

                listado.Add(tipoCurso);
            }
            return true;
        }

        public bool read()
        {
            try
            {
                TIPO_CURSO tipoCurso = Conexion.entities.TIPO_CURSO.First(f => f.IDTIPOCURSO == this.idTipoCurso);
                this.descripcion = tipoCurso.DESCRIPCION;

                return true;
            }
            catch (Exception e)
            {

                return false;
            }
        }
    }
}