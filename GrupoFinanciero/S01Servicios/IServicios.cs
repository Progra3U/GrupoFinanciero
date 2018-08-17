using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using S04Entidades;

namespace S01Servicios
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de interfaz "IServicios" en el código y en el archivo de configuración a la vez.
    [ServiceContract]
    public interface IServicios
    {
        #region BancoExterno
        [OperationContract]
        void BancoExternoAgregar(BancoExteno externo);
        [OperationContract]
        void BancoExternoModificar(BancoExteno externo);
        [OperationContract]
        void BancoExternoEliminar(BancoExteno externo);
        #endregion

        #region Clientes
        [OperationContract]
        void ClienteAgregar(Cliente cliente);
        [OperationContract]
        void ClienteModificar(Cliente cliente);
        [OperationContract]
        void ClienteEliminar(Cliente cliente);
        #endregion

        #region Servicios
        [OperationContract]
        void ServicioAgregar(Servicio servicio);
        [OperationContract]
        void ServicioModificar(Servicio servicio);
        [OperationContract]
        void ServicioEliminar(Servicio servicio);
        #endregion

        #region Usuarios
        [OperationContract]
        void UsuarioAgregar(Usuario usuario);
        [OperationContract]
        void UsuarioModificar(Usuario usuario);
        [OperationContract]
        void UsuarioEliminar(Usuario usuario);
        #endregion

        #region Otros
        [OperationContract]
        void AbonoRetiroInterno(Cliente abonoRetiroI);
        [OperationContract]
        void AbonoRetiroExterno(Cliente abonoRetiroE);
        [OperationContract]
        List<Cliente> MontosGlobales();
        [OperationContract]
        List<Transaccion> EstadosdeCuenta(Transaccion EstCuenta);
        [OperationContract]
        List<Usuario> VerEstadoUsuarios(Usuario usuario);
        [OperationContract]
        List<Cliente> VerEstadoClientes(Cliente cliente);
        [OperationContract]
        List<Transaccion> TransaccionesRegistradas();
        #endregion
    }
}
