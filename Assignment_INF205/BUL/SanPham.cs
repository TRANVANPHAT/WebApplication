using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Assignment_INF205.DAL;
using System.Data.SqlClient;

namespace Assignment_INF205.BUL
{
    public class SanPham : QuanLy
    {

        public override int add(Ojb oj)
        {
            string sql = "INSERT INTO SanPham(tenSP,soLuong,maLoai) VALUES(N'" + ((SanPhamDAL)oj).tenSP + "', " + ((SanPhamDAL)oj).soLuong + ", " + ((SanPhamDAL)oj).maLoai + ")";
            SqlCommand cmd = new SqlCommand(sql, QuanLy.conn());
            int result = cmd.ExecuteNonQuery();
            cmd.Dispose();
            QuanLy.conn().Close();
            return result;
        }
        public int delete(int id)
        {
            return base.delete(id, "SanPham", "maSP");
        }
        public override int update(Ojb oj)
        {
            string sql = "UPDATE SanPham SET tenSP = N'" + ((SanPhamDAL)oj).tenSP + "', soLuong = " + ((SanPhamDAL)oj).soLuong + ", maLoai = " + ((SanPhamDAL)oj).maLoai + " WHERE maSP =" + oj.id;
            SqlCommand cmd = new SqlCommand(sql, QuanLy.conn());
            int result = cmd.ExecuteNonQuery();
            cmd.Dispose();
            QuanLy.conn().Close();
            return result;
        }

        public List<SanPhamDAL> selectById(int id)
        {
            List<SanPhamDAL> dsSP = new List<SanPhamDAL>();
            string sql = "SELECT * FROM SanPham WHERE maSP =" + id;
            SqlCommand cmd = new SqlCommand(sql, QuanLy.conn());
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                SanPhamDAL dal = new SanPhamDAL();
                dal.id = rd.GetInt32(0);
                dal.tenSP = rd.GetString(1);
                dal.soLuong = rd.GetInt32(2);
                dal.maLoai = rd.GetInt32(3);
                dsSP.Add(dal);
            }
            cmd.Dispose();
            QuanLy.conn().Close();
            return dsSP;
        }
    }
}