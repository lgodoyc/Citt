using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoCitt.Controllers
{
    public class Persona
    {
        public string rut { get; set; }
        public string nombre { get; set;}
        public string apellidoPaterno { get; set; }
        public string apellidoMaterno { get; set; }
        public string correo { get; set; }
        public int idComuna { get; set; }
        public int idUsuario { get; set; }
        public IList<Persona> personas { get; set; }

        public Persona()
        {
            rut = string.Empty;
            nombre = string.Empty;
            apellidoPaterno = string.Empty;
            apellidoMaterno = string.Empty;
            correo = string.Empty;
            idComuna = default(int);
            idUsuario = default(int);
        }

        public bool readAll()
        {
            this.personas = new List<Persona>();
            foreach (var item in Conexion.entities.PERSONA.ToList())
            {
                Persona persona = new Persona();
                persona.rut = item.RUT;
                persona.nombre = item.NOMBRES;
                persona.apellidoPaterno = item.APELLIDOPATERNO;
                persona.apellidoMaterno = item.APELLIDOMATERNO;
                persona.idComuna = Convert.ToInt32(item.IDCOMUNA);
                persona.idUsuario = Convert.ToInt32(item.IDUSUARIO);

                this.personas.Add(persona);
            }
            return true;
        }
        public string retornarRutByIdCuenta(int idCuenta)
        {
            string rut = string.Empty;
            foreach (var item in Conexion.entities.PERSONA.ToList())
            {
                if (item.IDUSUARIO == idCuenta)
                {
                    rut = item.RUT;                    
                }
            }
            return rut;
        }
    }
}