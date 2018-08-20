using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using S04Entidades;
using S02LogicaNegocios;

namespace S01Servicios
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de clase "Servicios" en el código, en svc y en el archivo de configuración a la vez.
    // NOTA: para iniciar el Cliente de prueba WCF para probar este servicio, seleccione Servicios.svc o Servicios.svc.cs en el Explorador de soluciones e inicie la depuración.
    public class Servicios : IServicios
    {
        #region BancoExterno
        public void BancoExternoAgregar(BancoExteno externo)
        {
            S02LogicaNegocios.LogicaNegocios.BancoExternoAgregar(externo);
        }
        public void BancoExternoModificar(BancoExteno externo)
        {
            S02LogicaNegocios.LogicaNegocios.BancoExternoModificar(externo);
        }
        public void BancoExternoEliminar(BancoExteno externo)
        {
            S02LogicaNegocios.LogicaNegocios.BancoExternoEliminar(externo);
        }
        #endregion

        #region Clientes
        public void ClienteAgregar(Cliente cliente)
        {
            S02LogicaNegocios.LogicaNegocios.ClienteAgregar(cliente);
        }
        public void ClienteModificar(Cliente cliente)
        {
            S02LogicaNegocios.LogicaNegocios.ClienteModificar(cliente);
        }
        public void ClienteEliminar(Cliente cliente)
        {
            S02LogicaNegocios.LogicaNegocios.ClienteEliminar(cliente);
        }
        /*public List<Cliente> ClienteBuscar(Cliente cliente)
        {
            return S02LogicaNegocios.LogicaNegocios.ClienteBuscar(cliente);
        }*/
        #endregion

        #region Servicios
        public void ServicioAgregar(Servicio servicio)
        {
            S02LogicaNegocios.LogicaNegocios.ServicioAgregar(servicio);
        }
        public void ServicioModificar(Servicio servicio)
        {
            S02LogicaNegocios.LogicaNegocios.ServicioModificar(servicio);
        }
        public void ServicioEliminar(Servicio servicio)
        {
            S02LogicaNegocios.LogicaNegocios.ServicioEliminar(servicio);
        }
        #endregion

        #region Usuarios
        public void UsuarioAgregar(Usuario usuario)
        {
            S02LogicaNegocios.LogicaNegocios.UsuarioAgregar(usuario);
        }
        public void UsuarioModificar(Usuario usuario)
        {
            S02LogicaNegocios.LogicaNegocios.UsuarioModificar(usuario);
        }
        public void UsuarioEliminar(Usuario usuario)
        {
            S02LogicaNegocios.LogicaNegocios.UsuarioEliminar(usuario);
        }
        /*public List<Usuario> UsuarioBuscar(Usuario usuario)
        {
            S02LogicaNegocios.LogicaNegocios.UsuarioBuscar(usuario);
        }*/
        #endregion

        #region Otros
        public void AbonoRetiroInterno(Cliente abonoRetiroI)
        {
            S02LogicaNegocios.LogicaNegocios.AbonoRetiroInterno(abonoRetiroI);
        }
        public void AbonoRetiroExterno(Cliente abonoRetiroE)
        {
            S02LogicaNegocios.LogicaNegocios.AbonoRetiroExterno(abonoRetiroE);
        }
        public List<Cliente> MontosGlobales()
        {
            return S02LogicaNegocios.LogicaNegocios.MontosGlobales();
        }
        public List<Transaccion> EstadosdeCuenta(Transaccion EstCuenta)
        {
            return S02LogicaNegocios.LogicaNegocios.EstadosdeCuenta(EstCuenta);
        }
        public List<Usuario> VerEstadoUsuarios(Usuario usuario)
        {
            return S02LogicaNegocios.LogicaNegocios.VerEstadoUsuarios(usuario);
        }
        public List<Cliente> VerEstadoClientes(Cliente cliente)
        {
            return S02LogicaNegocios.LogicaNegocios.VerEstadoClientes(cliente);
        }
        public List<Transaccion> TransaccionesRegistradas()
        {
            return S02LogicaNegocios.LogicaNegocios.TransaccionesRegistradas();
        }
        public List<Cliente> ConsultaSaldos(Cliente saldos)
        {
            return S02LogicaNegocios.LogicaNegocios.ConsultaSaldos(saldos);
        }
        #endregion

        #region Login
        public List<Usuario> Login(Usuario usuario)
        {
            return S02LogicaNegocios.LogicaNegocios.Login(usuario);
        }
        #endregion


    }
}
