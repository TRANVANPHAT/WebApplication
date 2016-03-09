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
    public partial class khachhangedit : System.Web.UI.Page
    {
        private KhachHang kh = new KhachHang();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                List<KhachHangDAL> dsKH = kh.selectById(id);
                txtDiaChi.Text = dsKH[0].diaChi;
                txtEmail.Text = dsKH[0].email;
                txtSDT.Text = dsKH[0].dienThoai;
                txtTen.Text = dsKH[0].tenKH;
            }
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            KhachHangDAL dal = new KhachHangDAL();
            dal.id = Convert.ToInt32(Request.QueryString["id"]);
            dal.diaChi = txtDiaChi.Text;
            dal.email = txtEmail.Text;
            dal.dienThoai = txtSDT.Text;
            dal.tenKH = txtTen.Text;

            if (kh.update(dal) != 0)
            {
                messResult.Text = Messenger.success();
            }
            else {
                messResult.Text = Messenger.error();
            }
        }
    }
}