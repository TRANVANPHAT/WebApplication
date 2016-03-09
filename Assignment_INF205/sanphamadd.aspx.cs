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
    public partial class sanphamadd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            SanPham sp = new SanPham();
            SanPhamDAL ojbSP = new SanPhamDAL();
            ojbSP.tenSP = Convert.ToString(txtTenSSP.Text);
            ojbSP.soLuong = Convert.ToInt32(Request.Form["txtSoLuong"]);
            ojbSP.maLoai = Convert.ToInt32(ddlLoaiSanPham.SelectedItem.Value);
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