using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Assignment_INF205.BUL;
using Assignment_INF205.DAL;

namespace Assignment_INF205
{
    public partial class danhmucedit : System.Web.UI.Page
    {
        private LoaiSanPham loaiSP = new LoaiSanPham();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                List<LoaiSanPhamDAL> dsDM = loaiSP.selectById(id);
                txtDanhMuc.Text = dsDM[0].tenLoai;
            }
        }
        protected void btnThem_Click(object sender, EventArgs e)
        {
            LoaiSanPhamDAL dal = new LoaiSanPhamDAL();
            dal.id = Convert.ToInt32(Request.QueryString["id"]);
            dal.tenLoai = txtDanhMuc.Text;

            if (loaiSP.update(dal) != 0)
            {
                messResult.Text = Messenger.success();
            }
            else {
                messResult.Text = Messenger.error();
            }
        }
    }
}