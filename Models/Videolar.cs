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
    
    public partial class Videolar
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Videolar()
        {
            this.Egitmenler = new HashSet<Egitmenler>();
            this.Ogrenciler = new HashSet<Ogrenciler>();
            this.Sepet = new HashSet<Sepet>();
            this.Siparis = new HashSet<Siparis>();
        }
    
        public int vid_id { get; set; }
        public string vid_ad { get; set; }
        public string vid_link { get; set; }
        public int kat_ad { get; set; }
        public int vid_puan { get; set; }
        public int egt_id { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Egitmenler> Egitmenler { get; set; }
        public virtual Egitmenler Egitmenler1 { get; set; }
        public virtual Kategoriler Kategoriler { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Ogrenciler> Ogrenciler { get; set; }
        public virtual Puanlar Puanlar { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Sepet> Sepet { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Siparis> Siparis { get; set; }
    }
}
