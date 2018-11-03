using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ProyectoCitt.Data;

namespace ProyectoCitt.Controllers
{
    public class Usuario
    {

        public int idUsuario { get; set; }
        public string nombreUsuario { get; set; }
        public string contraseña { get; set; }
        public int idEstado { get; set; }
        public int idTipoUsuario { get; set; }

        public Usuario()
        {
            idUsuario = default(int);
            nombreUsuario = string.Empty;
            contraseña = string.Empty;
            idTipoUsuario = default(int);
            idEstado = default(int);
        }

        public bool read()
        {
            try
            {
                USUARIO usuario = Conexion.entities.USUARIO.First(f => f.NOMBREUSUARIO == this.nombreUsuario);
                this.idUsuario = Convert.ToInt32(usuario.IDUSUARIO);
                this.nombreUsuario = usuario.NOMBREUSUARIO;
                this.contraseña = usuario.CONTRASEÑA;
                this.idTipoUsuario = Convert.ToInt32(usuario.IDTIPOUSUARIO);
                this.idEstado = Convert.ToInt32(usuario.IDESTADO);
                return true;
            }
            catch (Exception e)
            {

                return false;
            }
        }
    }
}
}