using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using S04Entidades;
using System.Data.SqlClient;

namespace S03AccesoDatos
{
    public class AccesoDatos
    {
        #region BancoExterno
        public static void BancoExternoAgregar(BancoExteno externo)
        {
            EntidadFinancieraEntities contexto = null;
            try
            {
                contexto = new EntidadFinancieraEntities();
                contexto.pa_BancoExteno_Insert(externo.CuentaBancoEx, externo.CuentaInterna, externo.DetalleTrans,
                     externo.HorayFecha, externo.Monto);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (contexto != null)
                    contexto.Dispose();
            }
        }
        public static void BancoExternoModificar(BancoExteno externo)
        {
            EntidadFinancieraEntities contexto = null;
            try
            {
                contexto = new EntidadFinancieraEntities();
                contexto.pa_BancoExteno_Update(externo.CuentaBancoEx, externo.CuentaInterna, externo.DetalleTrans,
                     externo.HorayFecha, externo.Monto);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (contexto != null)
                    contexto.Dispose();
            }
        }
        public static void BancoExternoEliminar(BancoExteno externo)
        {
            EntidadFinancieraEntities contexto = null;
            try
            {
                contexto = new EntidadFinancieraEntities();
                contexto.pa_BancoExteno_Delete(externo.CuentaBancoEx);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (contexto != null)
                    contexto.Dispose();
            }
        }
        #endregion

        #region Clientes
        public static void ClienteAgregar(Cliente cliente)
        {
            EntidadFinancieraEntities contexto = null;
            try
            {
                contexto = new EntidadFinancieraEntities();
                contexto.pa_Cliente_Insert(cliente.Cedula, cliente.Nombre, cliente.Apellido1,
                    cliente.Apellido2, cliente.FechaNac, cliente.Telefono, cliente.Correo,
                    cliente.Provincia, cliente.DireccionExac, cliente.SaldoCuenta,
                    cliente.Contrasena, cliente.CuentaInterna, cliente.CuentaSimpe,
                    cliente.Descripcion, cliente.Estado);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (contexto != null)
                    contexto.Dispose();
            }
        }
        public static void ClienteModificar(Cliente cliente)
        {
            EntidadFinancieraEntities contexto = null;
            try
            {
                contexto = new EntidadFinancieraEntities();
                contexto.pa_Cliente_Update(cliente.Cedula, cliente.Nombre, cliente.Apellido1,
                    cliente.Apellido2, cliente.FechaNac, cliente.Telefono, cliente.Correo,
                    cliente.Provincia, cliente.DireccionExac, cliente.Contrasena,cliente.Estado);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (contexto != null)
                    contexto.Dispose();
            }

        }
        public static void ClienteEliminar(Cliente cliente)
        {
            EntidadFinancieraEntities contexto = null;
            try
            {
                contexto = new EntidadFinancieraEntities();
                contexto.pa_Cliente_Delete(cliente.Cedula);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (contexto != null)
                    contexto.Dispose();
            }
        }
        public static List<Cliente> ClienteBuscar(Cliente cliente)
        {
            EntidadFinancieraEntities contexto = null;
            List<Cliente> lstResultados = new List<Cliente>();
            try
            {
                contexto = new EntidadFinancieraEntities();
                var consulta = contexto.pa_Cliente_Buscar(cliente.Cedula);
                if (contexto != null)
                {
                    foreach (var item in consulta)
                    {
                        Cliente client = new Cliente();
                        client.Cedula = item.Cedula;
                        client.Nombre = item.Nombre;
                        client.Apellido1 = item.Apellido1;
                        client.Apellido2 = item.Apellido2;
                        client.FechaNac = item.FechaNac;
                        client.Telefono = item.Telefono;
                        client.Correo = item.Correo;
                        client.Provincia = item.Provincia;
                        client.DireccionExac = item.DireccionExac;
                        client.SaldoCuenta = item.SaldoCuenta;
                        client.Contrasena = item.Contrasena;
                        client.CuentaInterna = item.CuentaInterna;
                        client.CuentaSimpe = item.CuentaSimpe;
                        client.Descripcion = item.Descripcion;
                        client.Estado = item.Estado;
                        lstResultados.Add(client);
                    }
                }
            }
            finally
            {
                if (contexto != null)
                    contexto.Dispose();
            }
            return lstResultados;
        }
        #endregion

        #region Servicios
        public static void ServicioAgregar(Servicio servicio)
        {
            EntidadFinancieraEntities contexto = null;
            try
            {
                contexto = new EntidadFinancieraEntities();
                contexto.pa_Servicio_Insert(servicio.DescServicio, servicio.Estado);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (contexto != null)
                    contexto.Dispose();
            }
        }
        public static void ServicioModificar(Servicio servicio)
        {
            EntidadFinancieraEntities contexto = null;
            try
            {
                contexto = new EntidadFinancieraEntities();
                contexto.pa_Servicio_Update(servicio.DescServicio, servicio.Estado);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (contexto != null)
                    contexto.Dispose();
            }
        }
        public static void ServicioEliminar(Servicio servicio)
        {
            EntidadFinancieraEntities contexto = null;
            try
            {
                contexto = new EntidadFinancieraEntities();
                contexto.pa_Servicio_Delete(servicio.DescServicio);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (contexto != null)
                    contexto.Dispose();
            }
        }
        #endregion

        #region Usuarios
        public static void UsuarioAgregar(Usuario usuario)
        {
            EntidadFinancieraEntities contexto = null;
            try
            {
                contexto = new EntidadFinancieraEntities();
                contexto.pa_Usuario_Insert(usuario.Usuario1, usuario.Nombre, usuario.Contrasena,
                    usuario.Perfil,usuario.Estado);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (contexto != null)
                    contexto.Dispose();
            }
        }
        public static void UsuarioModificar(Usuario usuario)
        {
            EntidadFinancieraEntities contexto = null;
            try
            {
                contexto = new EntidadFinancieraEntities();
                contexto.pa_Usuario_Update(usuario.Usuario1, usuario.Nombre, usuario.Contrasena,
                    usuario.Perfil,usuario.Estado);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (contexto != null)
                    contexto.Dispose();
            }
        }
        public static void UsuarioEliminar(Usuario usuario)
        {
            EntidadFinancieraEntities contexto = null;
            try
            {
                contexto = new EntidadFinancieraEntities();
                contexto.pa_Usuario_Delete(usuario.Usuario1);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (contexto != null)
                    contexto.Dispose();
            }
        }
        public static List<Usuario> UsuarioBuscar(Usuario usuario)
        {
            EntidadFinancieraEntities contexto = null;
            List<Usuario> lstResultados = new List<Usuario>();
            try
            {
                contexto = new EntidadFinancieraEntities();
                var consulta = contexto.pa_Usuario_Buscar(usuario.Usuario1);
                if (contexto != null)
                {
                    foreach (var item in consulta)
                    {
                        Usuario usu = new Usuario();
                        usu.Usuario1 = item.Usuario;
                        usu.Nombre = item.Nombre;
                        usu.Contrasena = item.Contrasena;
                        usu.Perfil = item.Perfil;
                        usu.Estado = item.Estado;
                        lstResultados.Add(usu);
                    }
                }
            }
            finally
            {
                if (contexto != null)
                    contexto.Dispose();
            }
            return lstResultados;
        }
        #endregion

        #region Otros
        public static void AbonoRetiroInterno(Cliente abonoRetiroI)
        {
            //para Transferencia de Cuentas Internas
            EntidadFinancieraEntities contexto = null;
            try
            {
                contexto = new EntidadFinancieraEntities();
                contexto.pa_Cliente_AbonoRetiroInterno(abonoRetiroI.CuentaInterna,
                    abonoRetiroI.Descripcion, abonoRetiroI.SaldoCuenta);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (contexto != null)
                    contexto.Dispose();
            }
        }
        public static void AbonoRetiroExterno(Cliente abonoRetiroE)
        {
            //para Transferencia de Cuentas Externas
            EntidadFinancieraEntities contexto = null;
            try
            {
                contexto = new EntidadFinancieraEntities();
                contexto.pa_Cliente_AbonoRetiroInterno(abonoRetiroE.CuentaSimpe,
                    abonoRetiroE.Descripcion, abonoRetiroE.SaldoCuenta);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (contexto != null)
                    contexto.Dispose();
            }
        }
        public static List<Cliente> ConsultaSaldos(Cliente saldos)
        {
            EntidadFinancieraEntities contexto = null;
            List<Cliente> lstResultados = new List<Cliente>();
            try
            {
                contexto = new EntidadFinancieraEntities();
                var consulta = contexto.pa_ConsultaSaldos(saldos.Cedula);
                if(contexto != null)
                {
                    foreach(var item in consulta)
                    {
                        Cliente cliente = new Cliente();
                        cliente.SaldoCuenta = item.SaldoCuenta;
                    }
                }
            }
            finally
            {
                if (contexto != null)
                    contexto.Dispose();
            }
            return lstResultados;
        }
        public static List<Cliente> MontosGlobales()
        {
            //para Estados Globales
            EntidadFinancieraEntities contexto = null;
            List<Cliente> lstResultado = new List<Cliente>();
            try
            {
                contexto = new EntidadFinancieraEntities();
                var consulta = contexto.pa_Globales().ToList();
                if (consulta != null)
                {
                    foreach (var item in consulta)
                    {
                        Cliente cliente = new Cliente();
                        cliente.CuentaInterna = item.Cuenta;
                        cliente.CuentaSimpe = item.Simpe;
                        cliente.SaldoCuenta = item.Fondos;
                        lstResultado.Add(cliente);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (contexto != null)
                    contexto.Dispose();
            }
            return lstResultado;
        }
        public static List<Transaccion> EstadosdeCuenta(Transaccion EstCuenta)
        {
            //para Estados de Cuenta Clientes
            EntidadFinancieraEntities contexto = null;
            List<Transaccion> lstResultado = new List<Transaccion>();
            try
            {
                contexto = new EntidadFinancieraEntities();
                var consulta = contexto.pa_EstadosdeCuenta(EstCuenta.CuentaInterna).ToList();
                if (consulta != null)
                {
                    foreach (var item in consulta)
                    {
                        Transaccion tnsc = new Transaccion();
                        tnsc.IdTransac = item.IdTransac;
                        tnsc.CuentaInterna = item.CuentaInterna;
                        tnsc.CuentaSimpe = item.CuentaSimpe;
                        tnsc.Descripcion = item.Descripcion;
                        tnsc.Monto = item.Monto;
                        tnsc.HorayFecha = item.HorayFecha;
                        lstResultado.Add(tnsc);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (contexto != null)
                    contexto.Dispose();
            }
            return lstResultado;
        }
        public static List<Usuario> VerEstadoUsuarios(Usuario usuario)
        {
            //para ver Estados de los Usuarios
            EntidadFinancieraEntities contexto = null;
            List<Usuario> lstResultado = new List<Usuario>();
            try
            {
                contexto = new EntidadFinancieraEntities();
                var consulta = contexto.pa_VerEstadoUsuarios(usuario.Estado).ToList();
                if (consulta != null)
                {
                    foreach (var item in consulta)
                    {
                        Usuario user = new Usuario();
                        user.Usuario1 = item.Usuario;
                        user.Nombre = item.Nombre;
                        user.Estado = item.Estado;
                        lstResultado.Add(user);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (contexto != null)
                    contexto.Dispose();
            }
            return lstResultado;
        }
        public static List<Cliente> VerEstadoClientes(Cliente cliente)
        {
            //para ver Estados de los Usuarios
            EntidadFinancieraEntities contexto = null;
            List<Cliente> lstResultado = new List<Cliente>();
            try
            {
                contexto = new EntidadFinancieraEntities();
                var consulta = contexto.pa_VerEstadoClientes(cliente.Estado).ToList();
                if (consulta != null)
                {
                    foreach (var item in consulta)
                    {
                        Cliente customer = new Cliente();
                        customer.Cedula = item.Cedula;
                        customer.Nombre = item.Nombre;
                        customer.Apellido1 = item.Apellido1;
                        customer.Apellido2 = item.Apellido2;
                        lstResultado.Add(customer);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (contexto != null)
                    contexto.Dispose();
            }
            return lstResultado;
        }
        public static List<Transaccion> TransaccionesRegistradas()
        {
            //para ver las Transacciones de clientes por ID
            EntidadFinancieraEntities contexto = null;
            List<Transaccion> lstResultado = new List<Transaccion>();
            try
            {
                contexto = new EntidadFinancieraEntities();
                var consulta = contexto.pa_TransaccionesRegistradas().ToList();
                if (consulta != null)
                {
                    foreach (var item in consulta)
                    {
                        Transaccion tnsc = new Transaccion();
                        tnsc.IdTransac = item.IdTransac;
                        tnsc.CuentaInterna = item.CuentaInterna;
                        tnsc.CuentaSimpe = item.CuentaSimpe;
                        tnsc.Descripcion = item.Descripcion;
                        tnsc.Monto = item.Monto;
                        tnsc.HorayFecha = item.HorayFecha;
                        lstResultado.Add(tnsc);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (contexto != null)
                    contexto.Dispose();
            }
            return lstResultado;
        }
        #endregion

        #region Login
        public static List<Usuario> Login(Usuario usuario)
        {
            //para ver Estados de los Usuarios
            EntidadFinancieraEntities contexto = null;
            List<Usuario> lstResultado = new List<Usuario>();
            try
            {
                contexto = new EntidadFinancieraEntities();
                var consulta = contexto.pa_Login(usuario.Usuario1, usuario.Contrasena).ToList();
                if (consulta != null)
                {
                    foreach (var item in consulta)
                    {
                        Usuario user = new Usuario();
                        user.Usuario1 = item.Usuario;
                        user.Nombre = item.Nombre;
                        user.Contrasena = item.Contrasena;
                        user.Perfil = item.Perfil;
                        user.Estado = item.Estado;
                        lstResultado.Add(user);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (contexto != null)
                    contexto.Dispose();
            }
            return lstResultado;
        }
        #endregion

    }
}
