using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ProyectoCitt.Data;

namespace ProyectoCitt.Controllers
{
    public class Notas
    {
        public string rut;
        public int idCurso;
        public double nota;

        public Notas()
        {
            rut = string.Empty;
            idCurso = default(int);
            nota = default(double);
        }

        public bool create()
        {
            NOTAS nota = new NOTAS();
            try
            {
                nota.RUT = this.rut;
                nota.IDCURSO = this.idCurso;
                nota.NOTA = Convert.ToDecimal(this.nota);

                Conexion.entities.NOTAS.Add(nota);
                return true;
            }
            catch (Exception e)
            {

                return false;
            }
        }
    }
}