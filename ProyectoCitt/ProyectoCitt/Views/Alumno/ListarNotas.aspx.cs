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
                var notaAlumno = obtenerNota(rut, item.idCurso);
                if (!string.IsNullOrEmpty(notaAlumno) && Convert.ToInt32(notaAlumno) > 0)
                {
                    nota.Text = notaAlumno;
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

        protected void calProm_Click(object sender, EventArgs e)
        {
            Curso curso = new Curso();
            TipoCurso tipoCurso = new TipoCurso();
            Persona persona = new Persona();
            string rut = persona.retornarRutByIdCuenta(Convert.ToInt32(Session["usuario"].ToString()));
            curso.readAll();
            tipoCurso.readAll();

            var notaHtml = 0;
            var notaCss = 0;
            var notaJquery = 0;
            var auxVar = 0;

            TableRow tableRow = new TableRow();
            TableCell html = new TableCell();
            TableCell css = new TableCell();
            TableCell jquery = new TableCell();

            foreach (var item in curso.cursos)
            {
                var notaAlumno = obtenerNota(rut, item.idCurso);
                
               
                if (item.idCurso == 1 || item.idCurso == 2 || item.idCurso == 3)
                {
                    notaHtml = notaHtml + Convert.ToInt32(notaAlumno);
                }

                if (item.idCurso == 4 || item.idCurso == 5 || item.idCurso == 6)
                {
                    notaCss = notaCss + Convert.ToInt32(notaAlumno);
                }

                if (item.idCurso == 7 || item.idCurso == 8 || item.idCurso == 9)
                {
                    notaJquery = notaJquery + Convert.ToInt32(notaAlumno);
                }

                auxVar++;

                if(auxVar == 3)
                {
                    html.Text = (notaHtml/3).ToString();
                }
                if(auxVar == 6)
                {
                    css.Text = notaCss.ToString();
                }

                if(auxVar == 9)
                {
                    jquery.Text = notaJquery.ToString();
                }

                if(auxVar == 9)
                {
                    proTable.Rows.Add(tableRow);

                    if(Convert.ToInt32(html.Text) >= 4)
                    {

                        html.CssClass = "success";
                    }
                    else
                    {
                        html.CssClass = "danger";

                    }

                    if (Convert.ToInt32(css.Text) >= 4)
                    {

                        css.CssClass = "success";
                    }
                    else
                    {
                        css.CssClass = "danger";

                    }

                    if (Convert.ToInt32(jquery.Text) >= 4)
                    {

                        jquery.CssClass = "success";
                    }
                    else
                    {
                        jquery.CssClass = "danger";

                    }

                    tableRow.Cells.Add(html);
                    tableRow.Cells.Add(css);
                    tableRow.Cells.Add(jquery);
                }
            }

            promedios.Attributes.Remove("hidden");
        }
    }
}