using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace cau3.Models
{
    public class Post
    {
        public int PostID { get; set; }
        public string Title { get; set; }
        public string Content { get; set; }
        public string Image { get; set; }
        public string Note { get; set; }
        public string CategoryID { get; set; }        public Category Category { get; set; }
    }
}