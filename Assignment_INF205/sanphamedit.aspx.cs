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
    public partial class sanphamedit : System.Web.UI.Page
    {
        private SanPham sp = new SanPham();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                List<SanPhamDAL> dsSp = sp.selectById(id);
                txtTenSSP.Text = dsSp[0].tenSP;
                txtSoLuong.Text = dsSp[0].soLuong.ToString();
                ddlLoaiSanPham.SelectedValue = dsSp[0].maLoai.ToString();
            }
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            SanPhamDAL dal = new SanPhamDAL();
            dal.id = Convert.ToInt32(Request.QueryString["id"]);
            dal.maLoai = Convert.ToInt32(ddlLoaiSanPham.SelectedValue);
            dal.soLuong = Convert.ToInt32(txtSoLuong.Text);
            dal.tenSP = txtTenSSP.Text.Trim();
            if (sp.update(dal) != 0)
            {
                messResult.Text = Messenger.success();
            }
            else {
                messResult.Text = Messenger.error();
            }
        }
    }
}