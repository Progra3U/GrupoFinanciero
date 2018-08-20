using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using S04Entidades;
using S03AccesoDatos;

namespace S02LogicaNegocios
{
    public class LogicaNegocios
    {
        #region BancoExterno
        public static void BancoExternoAgregar(BancoExteno externo)
        {
            AccesoDatos.BancoExternoAgregar(externo);
        }
        public static void BancoExternoModificar(BancoExteno externo)
        {
            AccesoDatos.BancoExternoModificar(externo);
        }
        public static void BancoExternoEliminar(BancoExteno externo)
        {
            AccesoDatos.BancoExternoEliminar(externo);
        }
        #endregion

        #region Clientes
        public static void ClienteAgregar(Cliente cliente)
        {
            AccesoDatos.ClienteAgregar(cliente);
        }
        public static void ClienteModificar(Cliente cliente)
        {
            AccesoDatos.ClienteModificar(cliente);
        }
        public static void ClienteEliminar(Cliente cliente)
        {
            AccesoDatos.ClienteEliminar(cliente);
        }
        #endregion

        #region Servicios
        public static void ServicioAgregar(Servicio servicio)
        {
            AccesoDatos.ServicioAgregar(servicio);
        }
        public static void ServicioModificar(Servicio servicio)
        {
            AccesoDatos.ServicioModificar(servicio);
        }
        public static void ServicioEliminar(Servicio servicio)
        {
            AccesoDatos.ServicioEliminar(servicio);
        }
        #endregion

        #region Usuarios
        public static void UsuarioAgregar(Usuario usuario)
        {
            AccesoDatos.UsuarioAgregar(usuario);
        }
        public static void UsuarioModificar(Usuario usuario)
        {
            AccesoDatos.UsuarioModificar(usuario);
        }
        public static void UsuarioEliminar(Usuario usuario)
        {
            AccesoDatos.UsuarioEliminar(usuario);
        }
        #endregion

        #region Otros
        public static void AbonoRetiroInterno(Cliente abonoRetiroI)
        {
            AccesoDatos.AbonoRetiroInterno(abonoRetiroI);
        }
        public static void AbonoRetiroExterno(Cliente abonoRetiroE)
        {
            AccesoDatos.AbonoRetiroExterno(abonoRetiroE);
        }
        public static List<Cliente> MontosGlobales()
        {
            return AccesoDatos.MontosGlobales();
        }
        public static List<Transaccion> EstadosdeCuenta(Transaccion EstCuenta)
        {
            return AccesoDatos.EstadosdeCuenta(EstCuenta);
        }
        public static List<Usuario> VerEstadoUsuarios(Usuario usuario)
        {
            return AccesoDatos.VerEstadoUsuarios(usuario);
        }
        public static List<Cliente> VerEstadoClientes(Cliente cliente)
        {
            return AccesoDatos.VerEstadoClientes(cliente);
        }
        public static List<Transaccion> TransaccionesRegistradas()
        {
            return AccesoDatos.TransaccionesRegistradas();
        }

        public static List<Cliente> ConsultaSaldos(Cliente saldos)
        {
            return AccesoDatos.ConsultaSaldos(saldos);
        }
        #endregion

        #region Login
        public static List<Usuario> Login(Usuario usuario)
        {
            return AccesoDatos.Login(usuario);
        }
        #endregion


    }
}
