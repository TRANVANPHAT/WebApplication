using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Assignment_INF205.BUL;

namespace Assignment_INF205
{
    public partial class danhmuc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    int id = Convert.ToInt32(Request.QueryString["id"]);
                    LoaiSanPham sp = new LoaiSanPham();
                    if (sp.delete(id) != 0)
                    {
                        messResult.Text = Messenger.success();
                    }
                    else {
                        messResult.Text = Messenger.error();
                    }
                }

            }
        }
    }
}