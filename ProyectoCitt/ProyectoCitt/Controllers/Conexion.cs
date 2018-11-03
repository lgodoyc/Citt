using ProyectoCitt.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoCitt.Controllers
{
    public class Conexion
    {
        private static Entities _entities;
        public static Entities entities
        {
            get
            {
                if (_entities == null)
                {
                    _entities = new Entities();
                }
                return _entities;
            }
        }
    }
}