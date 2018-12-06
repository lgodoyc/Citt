using ProyectoCitt.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoCitt.Views.CSS
{
    public partial class Nivel1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEvaluacion_Click(object sender, EventArgs e)
        {
            int sum = 0;
            if (preguntaUno.SelectedIndex == 3)
            {
                sum++;
            }
            if (preguntaDos.SelectedIndex == 2)
            {
                sum++;
            }
            if (preguntaTres.SelectedIndex == 3)
            {
                sum++;
            }
            double nota = (sum * 7) / 3;
            nota = Math.Round(nota, 1);
            if (insertarNota(nota))
            {
                sum = 0;
            }
        }

        private bool insertarNota(double nota)
        {
            string usuario = Session["usuario"].ToString();
            string rut = string.Empty;
            Notas notas = new Notas();

            notas.rut = rut;
            notas.idCurso = 4;
            notas.nota = nota;

            if (notas.create())
            {
                return true;
            }
            else { return false; }
        }
    }
}