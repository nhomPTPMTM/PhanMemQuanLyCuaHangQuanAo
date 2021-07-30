using DevExpress.XtraEditors;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using BLL_DAL;

namespace DoAn_QuanLyShopThoiTrang
{
    public partial class ucHome : DevExpress.XtraEditors.XtraUserControl
    {
        NhanVienBLL_DAL nhanVienBLL = new NhanVienBLL_DAL();
        public ucHome()
        {
            InitializeComponent();
            if (Program.MaNV != "")
            {
                NhanVien nv = nhanVienBLL.detailNhanVien(Program.MaNV);
                string[] ten = nv.TenNhanVien.Split(' ');
                lblWelcome.Text = "Chào mừng, " + ten[ten.Length-1];
            }
        }

        private void btnThongTinChiTiet_Click(object sender, EventArgs e)
        {
            try
            {
                System.Diagnostics.Process.Start("https://360boutique.vn/");
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
