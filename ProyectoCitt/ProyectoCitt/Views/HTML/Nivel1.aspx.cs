using ProyectoCitt.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoCitt.Views.HTML
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
            nota = Math.Round(nota,1);
            if (insertarNota(nota))
            {
                sum = 0;
            }
        }

        private bool insertarNota(double nota)
        {
            Persona persona = new Persona();
            int idUsuario = Convert.ToInt32(Session["usuario"].ToString());
            string rut = persona.retornarRutByIdCuenta(idUsuario);
            Notas notas = new Notas();

            notas.rut = rut;
            notas.idCurso = 1;
            notas.nota = nota;

            if (notas.create())
            {
                return true;
            }
            else { return false; }            
        }

    }
}