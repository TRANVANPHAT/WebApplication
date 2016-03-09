using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Assignment_INF205.DAL;
using System.Data.SqlClient;

namespace Assignment_INF205.BUL
{
    public class LoaiSanPham:QuanLy
    {
        
        public override int add(Ojb oj)
        {
            string sql = "INSERT INTO LoaiSanPham(tenLoai) VALUES(N'" + ((LoaiSanPhamDAL)oj).tenLoai + "')";
            SqlCommand cmd = new SqlCommand(sql, QuanLy.conn());
            int result = cmd.ExecuteNonQuery();
            cmd.Dispose();
            QuanLy.conn().Close();
            return result;
        }
        public int delete(int id)
        {
            return base.delete(id, "LoaiSanPham","maLoai");
        }
        public override int update(Ojb oj)
        {
            string sql = "UPDATE LoaiSanPham SET tenLoai = N'"+((LoaiSanPhamDAL)oj).tenLoai+ "' WHERE maLoai =" + oj.id;
            SqlCommand cmd = new SqlCommand(sql, QuanLy.conn());
            int result = cmd.ExecuteNonQuery();
            cmd.Dispose();
            QuanLy.conn().Close();
            return result;
        }

        public List<LoaiSanPhamDAL> selectById(int id)
        {
            List<LoaiSanPhamDAL> dsSP = new List<LoaiSanPhamDAL>();
            string sql = "SELECT * FROM LoaiSanPham WHERE maLoai =" + id;
            SqlCommand cmd = new SqlCommand(sql, QuanLy.conn());
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                LoaiSanPhamDAL dal = new LoaiSanPhamDAL();
                dal.id = rd.GetInt32(0);
                dal.tenLoai = rd.GetString(1);
                dsSP.Add(dal);
            }
            cmd.Dispose();
            QuanLy.conn().Close();
            return dsSP;
        }
    }
}