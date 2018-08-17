using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using S04Entidades;

namespace S00Presentacion.ConexionServicios
{
    public static class ConexionesInternas
    {
        private static WCFServicio.ServiciosClient GetServ()
        {
            WCFServicio.ServiciosClient servicioCliente = new WCFServicio.ServiciosClient();
            return servicioCliente;
        }

        #region BancoExterno
        public static void BancoExternoAgregar(BancoExteno externo)
        {
            WCFServicio.ServiciosClient servicioCliente = GetServ();
            try
            {
                servicioCliente.BancoExternoAgregar(externo);
            }
            finally
            {
                servicioCliente.Close();
            }
        }
        public static void BancoExternoModificar(BancoExteno externo)
        {
            WCFServicio.ServiciosClient servicioCliente = GetServ();
            try
            {
                servicioCliente.BancoExternoModificar(externo);
            }
            finally
            {
                servicioCliente.Close();
            }
        }
        public static void BancoExternoEliminar(BancoExteno externo)
        {
            WCFServicio.ServiciosClient servicioCliente = GetServ();
            try
            {
                servicioCliente.BancoExternoEliminar(externo);
            }
            finally
            {
                servicioCliente.Close();
            }
        }
        #endregion

        #region Clientes
        public static void ClienteAgregar(Cliente cliente)
        {
            WCFServicio.ServiciosClient servicioCliente = GetServ();
            try
            {
                servicioCliente.ClienteAgregar(cliente);
            }
            finally
            {
                servicioCliente.Close();
            }
        }
        public static void ClienteModificar(Cliente cliente)
        {
            WCFServicio.ServiciosClient servicioCliente = GetServ();
            try
            {
                servicioCliente.ClienteModificar(cliente);
            }
            finally
            {
                servicioCliente.Close();
            }
        }
        public static void ClienteEliminar(Cliente cliente)
        {
            WCFServicio.ServiciosClient servicioCliente = GetServ();
            try
            {
                servicioCliente.ClienteEliminar(cliente);
            }
            finally
            {
                servicioCliente.Close();
            }
        }
        #endregion

        #region Servicios
        public static void ServicioAgregar(Servicio servicio)
        {
            WCFServicio.ServiciosClient servicioCliente = GetServ();
            try
            {
                servicioCliente.ServicioAgregar(servicio);
            }
            finally
            {
                servicioCliente.Close();
            }
        }
        public static void ServicioModificar(Servicio servicio)
        {
            WCFServicio.ServiciosClient servicioCliente = GetServ();
            try
            {
                servicioCliente.ServicioModificar(servicio);
            }
            finally
            {
                servicioCliente.Close();
            }
        }
        public static void ServicioEliminar(Servicio servicio)
        {
            WCFServicio.ServiciosClient servicioCliente = GetServ();
            try
            {
                servicioCliente.ServicioEliminar(servicio);
            }
            finally
            {
                servicioCliente.Close();
            }
        }
        #endregion

        #region Usuarios
        public static void UsuarioAgregar(Usuario usuario)
        {
            WCFServicio.ServiciosClient servicioCliente = GetServ();
            try
            {
                servicioCliente.UsuarioAgregar(usuario);
            }
            finally
            {
                servicioCliente.Close();
            }
        }
        public static void UsuarioModificar(Usuario usuario)
        {
            WCFServicio.ServiciosClient servicioCliente = GetServ();
            try
            {
                servicioCliente.UsuarioModificar(usuario);
            }
            finally
            {
                servicioCliente.Close();
            }
        }
        public static void UsuarioEliminar(Usuario usuario)
        {
            WCFServicio.ServiciosClient servicioCliente = GetServ();
            try
            {
                servicioCliente.UsuarioEliminar(usuario);
            }
            finally
            {
                servicioCliente.Close();
            }
        }
        #endregion

        #region Otros
        public static void AbonoRetiroInterno(Cliente abonoRetiroI)
        {
            WCFServicio.ServiciosClient servicioCliente = GetServ();
            try
            {
                servicioCliente.AbonoRetiroInterno(abonoRetiroI);
            }
            finally
            {
                servicioCliente.Close();
            }
        }
        public static void AbonoRetiroExterno(Cliente abonoRetiroE)
        {
            WCFServicio.ServiciosClient servicioCliente = GetServ();
            try
            {
                servicioCliente.AbonoRetiroExterno(abonoRetiroE);
            }
            finally
            {
                servicioCliente.Close();
            }
        }
        public static List<Cliente> MontosGlobales()
        {
            WCFServicio.ServiciosClient servicioCliente = GetServ();
            try
            {
                return servicioCliente.MontosGlobales();
            }
            finally
            {
                servicioCliente.Close();
            }
        }
        public static List<Transaccion> EstadosdeCuenta(Transaccion EstCuenta)
        {
            WCFServicio.ServiciosClient servicioCliente = GetServ();
            try
            {
                return servicioCliente.EstadosdeCuenta(EstCuenta);
            }
            finally
            {
                servicioCliente.Close();
            }
        }
        public static List<Usuario> VerEstadoUsuarios(Usuario usuario)
        {
            WCFServicio.ServiciosClient servicioCliente = GetServ();
            try
            {
                return servicioCliente.VerEstadoUsuarios(usuario);
            }
            finally
            {
                servicioCliente.Close();
            }
        }
        public static List<Cliente> VerEstadoClientes(Cliente cliente)
        {
            WCFServicio.ServiciosClient servicioCliente = GetServ();
            try
            {
                return servicioCliente.VerEstadoClientes(cliente);
            }
            finally
            {
                servicioCliente.Close();
            }
        }
        public static List<Transaccion> TransaccionesRegistradas()
        {
            WCFServicio.ServiciosClient servicioCliente = GetServ();
            try
            {
                return servicioCliente.TransaccionesRegistradas();
            }
            finally
            {
                servicioCliente.Close();
            }
        }
        #endregion
    }
}