using OnlineEgitimProjesi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace OnlineEgitimProjesi.Controllers
{
    public class BasketController : Controller
    {
        // GET: Basket
        private OnlineEgitimEntities1 db = new OnlineEgitimEntities1();
        [HttpPost]
        public JsonResult AddProduct(int id, string fiyat)
        {
            db.Sepet.Add(new Sepet
            {
                sepet_id = id,
                fiyat = 15.ToString()
            });
            var sonuc = db.SaveChanges();
            return Json(sonuc,JsonRequestBehavior.AllowGet);
        }

        public ActionResult BasketDetails(int id)
        {
            var sonuc = db.Videolar.Where(x => x.vid_id == id).ToList();
            return View(sonuc);
        }
    }
}