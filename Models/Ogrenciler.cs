//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace OnlineEgitimProjesi.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Ogrenciler
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Ogrenciler()
        {
            this.Siparis = new HashSet<Siparis>();
        }
    
        public int ogr_id { get; set; }
        public string ogr_ad { get; set; }
        public string ogr_soyad { get; set; }
        public string ogr_eposta { get; set; }
        public string ogr_sifre { get; set; }
        public string ogr_tel { get; set; }
        public Nullable<int> ogr_video { get; set; }
    
        public virtual Videolar Videolar { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Siparis> Siparis { get; set; }
    }
}
