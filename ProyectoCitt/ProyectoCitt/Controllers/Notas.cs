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
        public IList<Notas> listado { get; set; }

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

                Conexion.entities.SaveChanges();

                return true;
            }
            catch (Exception e)
            {

                return false;
            }
        }

        public bool readAll()
        {
            listado = new List<Notas>();
            foreach (var item in Conexion.entities.NOTAS.ToList())
            {
                Notas notas = new Notas();
                notas.rut = item.RUT;
                notas.idCurso = Convert.ToInt32(item.IDCURSO);
                notas.nota = Convert.ToDouble(item.NOTA);

                listado.Add(notas);
            }
            return true;
        }

        public bool retonarNotaByCurso()
        {
            readAll();
            try
            {
                foreach (var item in listado)
                {
                    if (item.rut == this.rut && item.idCurso == this.idCurso)
                    {
                        this.nota = item.nota;
                    }
                }
                return true;
            }
            catch (Exception e)
            {

                return false;
            }            
        }
    }
}