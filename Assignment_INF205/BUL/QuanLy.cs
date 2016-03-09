using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Assignment_INF205.DAL;
using System.Data.SqlClient;

namespace Assignment_INF205.BUL
{
    public abstract class QuanLy
    {
        public static SqlConnection conn()
        {
            string strConn = @"Data Source=PHATTRAN\SQLEXPRESS;Initial Catalog=Assignment_INF205;Integrated Security=True";
            SqlConnection cn = new SqlConnection(strConn);
            cn.Open();
            return cn;
        }

        
        public int delete(int id, string table, string col) {
            string sql = "DELETE FROM "+table+" WHERE "+ col + "=" + id;
            SqlCommand cmd = new SqlCommand(sql, QuanLy.conn());
            cmd.Dispose();
            QuanLy.conn().Close();
            return cmd.ExecuteNonQuery();
        }
        public abstract int add(Ojb oj);
        public abstract int update(Ojb oj);
       // public abstract List<Ojb> selectById(int id);
    }
}
