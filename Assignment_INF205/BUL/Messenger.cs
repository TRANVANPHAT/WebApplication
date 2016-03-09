using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Assignment_INF205.BUL
{
    public class Messenger
    {
        public static string success() {
            return "<div class=\"alert alert-success\" role=\"alert\"> <strong>SUCCESS!</strong> Thao tác thành công. </div>";
        }

        public static string error() {
            return "<div class=\"alert alert-danger\" role=\"alert\"> <strong>ERROR!</strong> Đã có lỗi xảy ra. </div>";
        }
    }
}