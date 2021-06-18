using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using OnlineEgitimProjesi.Models;

namespace OnlineEgitimProjesi.Controllers
{
    public class RegisterController : Controller
    {
        private OnlineEgitimEntities1 db = new OnlineEgitimEntities1();




        // GET: Register/Create
        public ActionResult OgrenciKayit()
        {
            ViewBag.ogr_video = new SelectList(db.Videolar, "vid_id", "vid_ad");
            return View();
        }

        // POST: Register/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult OgrenciKayit([Bind(Include = "ogr_id,ogr_ad,ogr_soyad,ogr_eposta,ogr_sifre,ogr_tel,ogr_video")] Ogrenciler ogrenciler)
        {
            if (ModelState.IsValid)
            {
                db.Ogrenciler.Add(ogrenciler);
                db.SaveChanges();
                return RedirectToAction("Index","Login");
            }

            ViewBag.ogr_video = new SelectList(db.Videolar, "vid_id", "vid_ad", ogrenciler.ogr_video);
            return View(ogrenciler);
        }

        public ActionResult EgitmenKayit()
        {
            ViewBag.egt_puan = new SelectList(db.Puanlar, "puan_id", "puan");
            ViewBag.egt_video = new SelectList(db.Videolar, "vid_id", "vid_ad");
            return View();
        }

        // POST: Egitmenlers/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult EgitmenKayit([Bind(Include = "egt_id,egt_ad,egt_soyad,egt_eposta,egt_sifre,egt_tel,egt_puan,egt_video")] Egitmenler egitmenler)
        {
            if (ModelState.IsValid)
            {
                db.Egitmenler.Add(egitmenler);
                db.SaveChanges();
                return RedirectToAction("EgitmenLogin","Login");
            }

            ViewBag.egt_puan = new SelectList(db.Puanlar, "puan_id", "puan", egitmenler.egt_puan);
            ViewBag.egt_video = new SelectList(db.Videolar, "vid_id", "vid_ad", egitmenler.egt_video);
            return View(egitmenler);
        }
    }
}
