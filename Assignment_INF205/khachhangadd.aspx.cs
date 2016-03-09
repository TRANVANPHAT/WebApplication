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
    public partial class khachhangadd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            KhachHang sp = new KhachHang();
            KhachHangDAL ojbSP = new KhachHangDAL();
            ojbSP.diaChi = Convert.ToString(txtDiaChi.Text);
            ojbSP.dienThoai = Convert.ToString(txtSDT.Text);
            ojbSP.email = Convert.ToString(txtEmail.Text);
            ojbSP.tenKH = Convert.ToString(txtTen.Text);

            if (sp.add(ojbSP) != 0)
            {
                messResult.Text = Messenger.success();
            }
            else {
                messResult.Text = Messenger.error();
            }
        }
    }
}