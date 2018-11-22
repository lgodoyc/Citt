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
        public IList<Usuario> usuarios { get; set; }

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
        public bool create()
        {
            USUARIO usuario = new USUARIO();
            try
            {
                usuario.IDUSUARIO = this.idUsuario;
                usuario.NOMBREUSUARIO = this.nombreUsuario;
                usuario.CONTRASEÑA = this.contraseña;
                usuario.IDESTADO = this.idEstado;
                usuario.IDTIPOUSUARIO = this.idTipoUsuario;

                Conexion.entities.USUARIO.Add(usuario);
                Conexion.entities.SaveChanges();

                return true;
            }
            catch (Exception e)
            {

                return false;
            }
        }

        public bool update()
        {
            try
            {
                USUARIO usuario = Conexion.entities.USUARIO.First(f => f.IDUSUARIO == this.idUsuario);

                usuario.NOMBREUSUARIO = this.nombreUsuario;
                usuario.CONTRASEÑA = this.contraseña;
                usuario.IDESTADO = this.idEstado;
                usuario.IDTIPOUSUARIO = this.idTipoUsuario;

                Conexion.entities.SaveChanges();

                return true;
            }
            catch (Exception e)
            {

                return false;
            }
        }

        public bool delete()
        {
            try
            {
                USUARIO usuario = Conexion.entities.USUARIO.First(f => f.IDUSUARIO == this.idUsuario);
                Conexion.entities.USUARIO.Remove(usuario);

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
            this.usuarios = new List<Usuario>();
            foreach (var item in Conexion.entities.USUARIO.ToList())
            {
                Usuario usuario = new Usuario();
                usuario.idUsuario = Convert.ToInt32(item.IDUSUARIO);
                usuario.nombreUsuario = item.NOMBREUSUARIO;
                usuario.contraseña = item.CONTRASEÑA;
                usuario.idEstado = Convert.ToInt32(item.IDESTADO);
                usuario.idTipoUsuario = Convert.ToInt32(item.IDTIPOUSUARIO);

                this.usuarios.Add(usuario);
            }
            return true;
        }
    }
}