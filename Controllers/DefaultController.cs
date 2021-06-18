using OnlineEgitimProjesi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace OnlineEgitimProjesi.Controllers
{
    public class DefaultController : Controller
    {
        private OnlineEgitimEntities1 db = new OnlineEgitimEntities1();
        // GET: Default
        public ActionResult Index()
        {
            return View(db.Kategoriler.ToList());
        }

        public ActionResult Success()
        {
            return View();
        }
    }
}