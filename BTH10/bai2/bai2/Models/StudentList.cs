using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace bai2.Models
{
    public class StudentList
    {
        private List<Student> Students = new List<Student>()
        {
            new Student
            {
                studentID = 1,
                studentName = "Nguyễn Anh Thư",
                studentBirthday = "23/03/1999",
                studentPhone = "0987045234",
                studentEmail = "anhthu99@gmail.com"

            },new Student
            {
                studentID = 2,
                studentName = "Trần Văn Anh",
                studentBirthday = "12/2/1998",
                studentPhone = "0945123987",
                studentEmail = "anh23@gmail.com"
            },new Student
            {
                studentID = 3,
                studentName = "Nguyễn Mai Linh",
                studentBirthday = "11/1/2000",
                studentPhone = "0987032825",
                studentEmail = "linh2000@gmail.com"
            }
        };

        public List<Student> GetStudents()
        {
            var student = Students.Select(i => i);
            return student.ToList();
        }
    }
}