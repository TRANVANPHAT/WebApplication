using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Assignment_INF205.DAL
{
    public class KhachHangDAL:Ojb
    {
        public string tenKH { get; set; }
        public string diaChi { get; set; }
        public string email { get; set; }
        public string dienThoai { get; set; }
    }
}