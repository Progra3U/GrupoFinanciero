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
    using System.Collections.Generic;
    
    [Serializable]
    public partial class Transaccion
    {
        public int IdTransac { get; set; }
        public Nullable<int> Cedula { get; set; }
        public string CuentaInterna { get; set; }
        public string CuentaSimpe { get; set; }
        public string Descripcion { get; set; }
        public int Monto { get; set; }
        public Nullable<System.DateTime> HorayFecha { get; set; }
    }
}
