using OnlineEgitimProjesi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace OnlineEgitimProjesi.Controllers
{
    public class LoginController : Controller
    {

        private OnlineEgitimEntities1 db = new OnlineEgitimEntities1();

        // GET: Login
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Index(Ogrenciler ogrenci)
        {

            var sonuc = db.Ogrenciler.Where(x => x.ogr_eposta == ogrenci.ogr_eposta && x.ogr_sifre == ogrenci.ogr_sifre).Count();
            if (sonuc > 0)
            {
                return RedirectToAction("StudentDashboard");
            }
            else
            {
                return View();
            }

        }
        public ActionResult StudentDashboard()
        {
            return View();
        }

        public ActionResult EgitmenLogin() //Eğitmenler için giriş ekranı
        {
            return View();
        }

        [HttpPost]
        public ActionResult EgitmenLogin(Egitmenler egitmen) // Eğitmen Şifre Kontrol
        {
            var sonuc = db.Egitmenler.Where(x => x.egt_eposta == egitmen.egt_eposta && x.egt_sifre == egitmen.egt_sifre).Count();
            if (sonuc > 0)
            {
                return RedirectToAction("EgitmenDashboard");
            }
            else
            {
                return View();
            }
        }

        public ActionResult EgitmenDashboard(Egitmenler egitmen) // Eğitmen Paneli
        {
            ViewBag.EgitmenAd = egitmen.egt_ad;
            return View();
        }


    }
}