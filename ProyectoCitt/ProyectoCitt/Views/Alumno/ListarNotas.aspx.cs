using ProyectoCitt.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoCitt.Views.Alumno
{
    public partial class ListarNotas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            cargarTabla();
        }
        private void cargarTabla()
        {
            Curso curso = new Curso();
            TipoCurso tipoCurso = new TipoCurso();
            Persona persona = new Persona();
            string rut = persona.retornarRutByIdCuenta(Convert.ToInt32(Session["usuario"].ToString()));
            curso.readAll();
            tipoCurso.readAll();

            foreach (var item in curso.cursos)
            {
                TableRow tableRow = new TableRow();
                TableCell nombreTipoCurso = new TableCell();
                TableCell nombreCurso = new TableCell();
                TableCell nota = new TableCell();

                nombreTipoCurso.Text = retonarNombreTipoCurso(item.idTipoCurso);
                nombreCurso.Text = item.nombreCurso;
                if (string.IsNullOrEmpty(obtenerNota(rut, item.idCurso)))
                {
                    nota.Text = obtenerNota(rut, item.idCurso);
                }
                else
                {
                    nota.Text = "";
                }
                tablaEstadoPermisos.Rows.Add(tableRow);
                tableRow.Cells.Add(nombreTipoCurso);
                tableRow.Cells.Add(nombreCurso);
                tableRow.Cells.Add(nota);
            }
        }

        private string retonarNombreTipoCurso(int idTipoCurso)
        {
            TipoCurso tipoCurso = new TipoCurso();
            tipoCurso.idTipoCurso = idTipoCurso;
            if (tipoCurso.read())
            {
                return tipoCurso.descripcion;
            }
            else
            {
                return string.Empty;
            }
        }

        private string obtenerNota(string rut, int idCurso)
        {
            Notas notas = new Notas();
            notas.idCurso = idCurso;
            notas.rut = rut;

            if (notas.retonarNotaByCurso())
            {
                return notas.nota.ToString();
            }
            else
            {
                return string.Empty;
            }
        }
    }
}