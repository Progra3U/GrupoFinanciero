//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace S04Entidades
{
    using System;
    
    [Serializable]
    public partial class pa_Cliente_Buscar_Result
    {
        public int Cedula { get; set; }
        public string Nombre { get; set; }
        public string Apellido1 { get; set; }
        public string Apellido2 { get; set; }
        public Nullable<System.DateTime> FechaNac { get; set; }
        public string Telefono { get; set; }
        public string Correo { get; set; }
        public string Provincia { get; set; }
        public string DireccionExac { get; set; }
        public int SaldoCuenta { get; set; }
        public string Contrasena { get; set; }
        public string CuentaInterna { get; set; }
        public string CuentaSimpe { get; set; }
        public string Descripcion { get; set; }
        public bool Estado { get; set; }
    }
}