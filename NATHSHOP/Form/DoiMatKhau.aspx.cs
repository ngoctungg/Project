using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NATHSHOP.Form
{
    public partial class DoiMatKhau : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtTK.Text = Session["TenDangNhap"].ToString();
            txtTK.ReadOnly = true;
        }

        protected void btnDMK_Click(object sender, EventArgs e)
        {
            try
            {
                KhachHang kh = new KhachHang();
                kh.TENDANGNHAP = Session["TenDangNhap"].ToString();
                kh.MATKHAU = txtMKcu.Text;
                kh.Newpass = txtMKmoi.Text;
                Panel pnldadangnhap = (Panel)this.Master.FindControl("pnldadangnhap");
                if (pnldadangnhap.Visible == true)
                {
                    DAL_KetNoi.DoiMatKhau(kh);
                    lblThongBao.Text = "Đổi thành công";
                }
                else
                {
                    lblThongBao.Text = "Đổi thất bại";
                }
            }
            catch
            { }
        }
    }
}