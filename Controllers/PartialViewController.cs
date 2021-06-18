using OnlineEgitimProjesi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace OnlineEgitimProjesi.Controllers
{
    public class PartialViewController : Controller
    {
        // GET: PartialView
        private OnlineEgitimEntities1 db = new OnlineEgitimEntities1();

        public PartialViewResult EgitmenPartial()
        {
            return PartialView(db.Egitmenler.ToList().Take(5));
        }

        public PartialViewResult StudentPartial()
        {
            return PartialView(db.Ogrenciler.ToList().Take(5));
        }

        public PartialViewResult CoursePartial()
        {
            return PartialView(db.Videolar.ToList().Take(5));
        }

        public PartialViewResult OrderSuccessPartial()
        {
            return PartialView();
        }
    }
}