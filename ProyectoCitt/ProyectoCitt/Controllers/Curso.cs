using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoCitt.Controllers
{
    public class Curso
    {
        public int idCurso { get; set; }
        public string nombreCurso { get; set; }
        public int idEstado { get; set; }
        public int idTipoCurso { get; set; }
        public IList<Curso> cursos { get; set; }

        public Curso() {
            idCurso = default(int);
            nombreCurso = string.Empty;
            idEstado = default(int);
            idTipoCurso = default(int);
        }
        public bool readAll()
        {
            this.cursos = new List<Curso>();
            foreach (var item in Conexion.entities.CURSO.ToList())
            {
                Curso curso = new Curso();
                curso.idCurso = Convert.ToInt32(item.IDCURSO);
                curso.nombreCurso = item.NOMBRECURSO;
                curso.idEstado = Convert.ToInt32(item.IDESTADO);
                curso.idTipoCurso = Convert.ToInt32(item.IDTIPOCURSO);

                this.cursos.Add(curso);
            }
            return true;
        }
    }
}