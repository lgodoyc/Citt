using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProyectoCitt.Views;
using ProyectoCitt.Controllers;

namespace ProyectoCitt
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string user = txtUsuario.Text;
            string pass = txtContraseña.Text;
            Usuario usuario = new Usuario();
            usuario.nombreUsuario = user;
            if (usuario.comprobarCuenta(user,pass))
            {
                usuario.read();
                switch (usuario.idTipoUsuario)
                {
                    case 1:
                        break;
                    case 2:
                        Session["alumno"] = "alumno";
                        Session["usuario"] = usuario.idUsuario;
                        Response.Redirect("Views/Alumno/InicioAlumno.aspx");
                        break;
                    default:
                        break;
                }
            }
        }
    }
}