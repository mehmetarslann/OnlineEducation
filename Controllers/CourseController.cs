using OnlineEgitimProjesi.Models;
using System;
using System.Collections.Generic;
using System.Dynamic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace OnlineEgitimProjesi.Controllers
{
    public class CourseController : Controller
    {

        private OnlineEgitimEntities1 db = new OnlineEgitimEntities1();

        // GET: Course
        public ActionResult Index() // Kurs Kategorileri
        {
            return View(db.Kategoriler.ToList());
        }

        public ActionResult CourseDetails(int id) // Kurs Detayları
        {
            var degerler = db.Videolar.Where(x => x.kat_ad == id).ToList(); // id'si kat_id'ye eşit olan kategorileri listele
            return View(degerler);
        }

        public ActionResult CourseList() // Kursları Listele
        {
            return View(db.Videolar.ToList());
        }

        public ActionResult StudentList() // Öğrencileri Listele
        {
            return View(db.Ogrenciler.ToList());
        }
    }
}