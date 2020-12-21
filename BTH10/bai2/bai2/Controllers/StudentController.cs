using bai2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace bai2.Controllers
{
    public class StudentController : Controller
    {
        private StudentList studentAll = new StudentList();

        public ActionResult Index()
        {
            List<Student> myStudent = studentAll.GetStudents();
            return View(myStudent);
        }
    }
}