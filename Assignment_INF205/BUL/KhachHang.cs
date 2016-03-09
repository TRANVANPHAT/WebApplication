using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Assignment_INF205.DAL;
using System.Data.SqlClient;

namespace Assignment_INF205.BUL
{
    public class KhachHang:QuanLy
    {
        
        public override int add(Ojb oj)
        {
            string sql = "INSERT INTO KhachHang(tenKH, diaChi, email, dienThoai) VALUES(N'"+((KhachHangDAL)oj).tenKH+ 
                "', N'" + ((KhachHangDAL)oj).diaChi + "', N'" + ((KhachHangDAL)oj).email + "', N'" + ((KhachHangDAL)oj).dienThoai + "')";
            SqlCommand cmd = new SqlCommand(sql, QuanLy.conn());
            int result = cmd.ExecuteNonQuery();
            cmd.Dispose();
            QuanLy.conn().Close();
            return result;
        }
        public int delete(int id)
        {
            return base.delete(id, "KhachHang", "maKH");
        }
        public override int update(Ojb oj)
        {
            string sql = "UPDATE KhachHang SET tenKH = N'" + ((KhachHangDAL)oj).tenKH+ "', diaChi = N'" + ((KhachHangDAL)oj).diaChi + "', email = N'" + ((KhachHangDAL)oj).email + "', dienThoai = N'" + ((KhachHangDAL)oj).dienThoai + "' WHERE maKH =" + oj.id;
            SqlCommand cmd = new SqlCommand(sql, QuanLy.conn());
            int result = cmd.ExecuteNonQuery();
            cmd.Dispose();
            QuanLy.conn().Close();
            return result;
        }

        public List<KhachHangDAL> selectById(int id) {
            List<KhachHangDAL> dsSP = new List<KhachHangDAL>();
            string sql = "SELECT * FROM KhachHang WHERE maKH =" + id;
            SqlCommand cmd = new SqlCommand(sql, QuanLy.conn());
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                KhachHangDAL dal = new KhachHangDAL();
                dal.id = rd.GetInt32(0);
                dal.tenKH = rd.GetString(1);
                dal.diaChi = rd.GetString(2);
                dal.email = rd.GetString(3);
                dal.dienThoai = rd.GetString(4);
                dsSP.Add(dal);
            }
            cmd.Dispose();
            QuanLy.conn().Close();
            return dsSP;
        }
    }
}