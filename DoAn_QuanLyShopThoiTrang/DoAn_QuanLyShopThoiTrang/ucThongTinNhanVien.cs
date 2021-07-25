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
using GUI;

namespace DoAn_QuanLyShopThoiTrang
{
    public partial class ucThongTinNhanVien : DevExpress.XtraEditors.XtraUserControl
    {
        NhanVienBLL_DAL nhanVienBLL_DAL = new NhanVienBLL_DAL();
        SetupControls setup = new SetupControls();
        public ucThongTinNhanVien()
        {
            InitializeComponent();
        }

        private void ucThongTinNhanVien_Load(object sender, EventArgs e)
        {
            NhanVien nv = nhanVienBLL_DAL.detailNhanVien(Program.MaNV);

            setup.setupPicture(picNhanVien, Program.linkURL_Image + "nhanvien\\" + nv.HinhAnh);
            lblTenNV.Text = nv.TenNhanVien;
            lblNgaySinh.Text = nv.NgaySinh.Value.ToString("dd/MM/yyyy");
            lblGioiTinh.Text = nv.GioiTinh;
            lblCMND.Text = nv.CMND;
            lblDienThoai.Text = nv.SoDienThoai;
            lblEmail.Text = nv.Email;

        }
    }
}
