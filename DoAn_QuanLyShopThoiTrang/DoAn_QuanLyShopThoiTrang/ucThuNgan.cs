﻿using BLL_DAL;
using DevExpress.XtraEditors;
using DevExpress.XtraGrid.Views.Base;
using GUI;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DoAn_QuanLyShopThoiTrang
{
    public partial class ucThuNgan : DevExpress.XtraEditors.XtraUserControl
    {
        SanPhamBLL sanPhamBLL = new SanPhamBLL();
        List<SanPham> listSanPham = null;
        LoaiSanPhamBLL_DAL loaiSanPham = new LoaiSanPhamBLL_DAL();
        SetupControls setupControls = new SetupControls();
        HoaDonBLL_DAL hoaDonBLL_DAL = new HoaDonBLL_DAL();
        KhachHangBLL_DAL khachHangBLL_DAL = new KhachHangBLL_DAL();
        SanPham selectedSanPham = new SanPham();
        public string maDM { get; set; }
        public string maLoai;
        public ucThuNgan(string ml)
        {
            InitializeComponent();
            maLoai = ml;
        }

        private void ucThuNgan_Load(object sender, EventArgs e)
        {
            lblLoai.Text = loaiSanPham.getTenLoai(maLoai);
            gridView1.ShowFindPanel();
            gridView1.OptionsFind.ShowFindButton = true;
            gridView1.FocusedRowChanged += gridView_FocusedRowChanged;
            load_grvSanPham();

            MaKhachHangLookUpEdit.Properties.DataSource = khachHangBLL_DAL.loadKhachHang();
            MaKhachHangLookUpEdit.Properties.ValueMember = "MaKhachHang";
            MaKhachHangLookUpEdit.Properties.DisplayMember = "TenKhachHang";
            string maKH = Program.MaKH;
            string maDH = Program.MaHD;
            if (maKH != null && maDH != null&&maKH!=""&&maDH!="") {
                MaKhachHangLookUpEdit.EditValue = maKH;
                MaDonHangLookUpEdit.EditValue = maDH;
            }
            load_grvChiTietHoaDon();

        }
        private void load_grvSanPham()
        {
            gridControl1.DataSource = null;
            listSanPham = null;
            listSanPham = sanPhamBLL.loadSanPham_ForLoai(maLoai).ToList<SanPham>();
            maDM = loaiSanPham.load_MaDanhMuc(maLoai);
            gridControl1.DataSource = listSanPham;
            

            if (gridView1.Columns.Count > 6)
            {
                gridView1.Columns.RemoveAt(11);
                gridView1.Columns.RemoveAt(10);
                gridView1.Columns.RemoveAt(9);
                gridView1.Columns.RemoveAt(8);
                gridView1.Columns.RemoveAt(5);
                gridView1.Columns.RemoveAt(4);
            }

            string ID = gridView1.GetFocusedRowCellValue("MaSanPham").ToString();
            selectedSanPham = sanPhamBLL.detailSanpham(ID);
            setupPanelProduct(selectedSanPham);
        }
        private void gridView_FocusedRowChanged(object sender, FocusedRowChangedEventArgs e)
        {
            if (gridView1.GetFocusedRowCellValue("MaSanPham") != null) {
                string ID = gridView1.GetFocusedRowCellValue("MaSanPham").ToString();
                selectedSanPham = sanPhamBLL.detailSanpham(ID);
                setupPanelProduct(selectedSanPham);
            }
            
        }

        private void setupPanelProduct(SanPham sanpham)
        {
            if (sanpham.DanhMucHinhs.Count > 0)
            {
                setupControls.setupPicture(pictureEdit1, Program.linkURL_SanPham + maDM + "\\" + sanpham.MaLoaiSanPham + "\\" + sanpham.TenSanPham + "\\" + sanpham.DanhMucHinhs[0].TenHinh);
            }
            else { setupControls.setupPicture(pictureEdit1, Program.linkURL_SanPham + "NoImage.jpg"); }
            
            lblTenSP.Text = sanpham.TenSanPham;
            lblDonGia.Text = sanpham.DonGia + " VND";
            lblSoLuong.Text = sanpham.SoLuongTon + "";
            string trangthai = sanpham.TrangThai == true ? "Còn Hàng" : "Hết Hàng";
            lblTrangThai.Text= trangthai;
            memoEditMoTa.Text = sanpham.MoTa;
            txtSLMua.Properties.MaxValue =(int) sanpham.SoLuongTon;
        }

        private void labelControl3_Click(object sender, EventArgs e)
        {

        }

        private void labelControl10_Click(object sender, EventArgs e)
        {

        }

        private void simpleButton2_Click(object sender, EventArgs e)
        {
            if (MaKhachHangLookUpEdit.EditValue == null)
            {
                return;
            }
            HoaDonBanHang hd = new HoaDonBanHang();
            if (hoaDonBLL_DAL.GetLastHoaDon() == null)
            {
                
                hd.MaDonHang = "HD001";
                hd.MaKhachHang = MaKhachHangLookUpEdit.EditValue.ToString();
                hd.NgayTao = DateTime.Now;
                hd.MaNhanVien = DoAn_QuanLyShopThoiTrang.Properties.Settings.Default.MaNV;
                hd.TrangThai = false;
                hd.ThanhTien = 0;
            }
            else {
                string maSo = hoaDonBLL_DAL.GetLastHoaDon().MaDonHang.Substring(4);
                int STT = int.Parse(maSo);
                hd.MaDonHang = "HD00"+(STT+1);
                hd.MaKhachHang = MaKhachHangLookUpEdit.EditValue.ToString();
                hd.NgayTao = DateTime.Now;
                hd.MaNhanVien = DoAn_QuanLyShopThoiTrang.Properties.Settings.Default.MaNV;
                hd.TrangThai = false;
                hd.ThanhTien = 0;
            }
            if (hoaDonBLL_DAL.InsertHoaDon(hd))
            {
                MessageBox.Show("Thành công");
                MaDonHangLookUpEdit.Properties.DataSource= hoaDonBLL_DAL.loadDonBanHang(MaKhachHangLookUpEdit.EditValue.ToString()).ToList(); ;
                MaDonHangLookUpEdit.Properties.ValueMember = "MaDonHang";
                MaDonHangLookUpEdit.Properties.DisplayMember = "MaDonHang";
            }
        }

        private void MaDonHangTextEdit_EditValueChanged(object sender, EventArgs e)
        {
            if (!MaDonHangLookUpEdit.EditValue.ToString().Equals(""))
            {
                load_grvChiTietHoaDon();
                gridView2.ShowFindPanel();
                gridView2.OptionsFind.ShowFindButton = true;
                ThanhTienTextEdit.Text = hoaDonBLL_DAL.getSelectedHD(MaDonHangLookUpEdit.EditValue.ToString()).ThanhTien.ToString();
                if ((double)KhuyenMaiSpinEdit.Value > 0)
                {
                    double thanhTien = (double)hoaDonBLL_DAL.getSelectedHD(MaDonHangLookUpEdit.EditValue.ToString()).ThanhTien;
                    ThanhTienTextEdit.Text = (thanhTien * (100 - (double)KhuyenMaiSpinEdit.Value) / 100) + "";
                }

                Program.MaHD = MaDonHangLookUpEdit.EditValue.ToString();
            }
        }

        private void MaKhachHangComboBoxEdit_EditValueChanged(object sender, EventArgs e)
        {
            if (!MaKhachHangLookUpEdit.EditValue.ToString().Equals(""))
            {
                List<HoaDonBanHang> lst= hoaDonBLL_DAL.loadDonBanHang(MaKhachHangLookUpEdit.EditValue.ToString()).ToList();
                MaDonHangLookUpEdit.Properties.DataSource = lst;
                MaDonHangLookUpEdit.Properties.ValueMember = "MaDonHang";
                MaDonHangLookUpEdit.Properties.DisplayMember = "MaDonHang";

                MaDonHangLookUpEdit.Properties.PopulateColumns();
                MaDonHangLookUpEdit.Properties.Columns["ThanhTien"].Visible = false;
                MaDonHangLookUpEdit.Properties.Columns["GhiChu"].Visible = false;
                MaDonHangLookUpEdit.Properties.Columns["KhachHang"].Visible = false;
                MaDonHangLookUpEdit.Properties.Columns["NhanVien"].Visible = false;
                MaDonHangLookUpEdit.Properties.Columns["KhuyenMai"].Visible = false;

                Program.MaKH = MaKhachHangLookUpEdit.EditValue.ToString();

            }
        }

        private void btnMuaHang_Click(object sender, EventArgs e)
        {
            if (MaDonHangLookUpEdit.EditValue == null||(MaDonHangLookUpEdit.EditValue.ToString().Equals("")))
            {
                MessageBox.Show("Hãy chọn đơn để thêm", "Lỗi");
                return;
            }
            string maHD = MaDonHangLookUpEdit.EditValue.ToString();
            ChiTietDonBanHang ct = new ChiTietDonBanHang();
            ct.MaDonHang = maHD;
            ct.MaSanPham = selectedSanPham.MaSanPham;
            ct.Size = null;
            ct.MauSac = null;
            ct.SoLuongMua = (int?)txtSLMua.Value;
            ct.DonGiaBan = selectedSanPham.DonGia;

            bool kqThem = hoaDonBLL_DAL.InsertChiTietHoaDon(ct);
            bool kqUpdateThanhTien = hoaDonBLL_DAL.UpdateThanhTien_SoLuongTon(ct,true);
            if (kqThem && kqUpdateThanhTien)
            {
                //gridControl1.DataSource = sanPhamBLL.loadSanPham_ForLoai(selectedSanPham.MaLoaiSanPham).ToList<SanPham>();
                load_grvSanPham();
                string ID = gridView1.GetFocusedRowCellValue("MaSanPham").ToString();
                selectedSanPham = sanPhamBLL.detailSanpham(ID);
                setupPanelProduct(selectedSanPham);

                MessageBox.Show("Thành công");
                load_grvChiTietHoaDon();
                ThanhTienTextEdit.Text = hoaDonBLL_DAL.getSelectedHD(MaDonHangLookUpEdit.EditValue.ToString()).ThanhTien.ToString();

            }
        }

        private void btnDeleteChiTiet_Click(object sender, EventArgs e)
        {
            ChiTietDonBanHang ct = new ChiTietDonBanHang();
            ct.MaDonHang=gridView2.GetFocusedRowCellValue("MaDonHang").ToString();
            ct.MaDonHang = gridView2.GetFocusedRowCellValue("MaDonHang").ToString();
            ct.MaSanPham = gridView2.GetFocusedRowCellValue("MaSanPham").ToString();
            ct.DonGiaBan = (double?)gridView2.GetFocusedRowCellValue("DonGiaBan");
            ct.SoLuongMua= (int)gridView2.GetFocusedRowCellValue("SoLuongMua");

            bool kqUpdateThanhTien = hoaDonBLL_DAL.UpdateThanhTien_SoLuongTon(ct, false);
            bool kqXoa = hoaDonBLL_DAL.DeletChiTietHoaDon(ct.MaDonHang,ct.MaSanPham);
            
            if (kqXoa && kqUpdateThanhTien)
            {
                MessageBox.Show("Thành công");

                gridControl1.DataSource = sanPhamBLL.loadSanPham_ForLoai(selectedSanPham.MaLoaiSanPham).ToList<SanPham>();
                gridControl1.RefreshDataSource();
                gridView1.RefreshData();
                string ID = gridView1.GetFocusedRowCellValue("MaSanPham").ToString();
                selectedSanPham = sanPhamBLL.detailSanpham(ID);
                setupPanelProduct(selectedSanPham);

                load_grvChiTietHoaDon();
                ThanhTienTextEdit.Text = hoaDonBLL_DAL.getSelectedHD(MaDonHangLookUpEdit.EditValue.ToString()).ThanhTien.ToString();
            }
        }
        private void load_grvChiTietHoaDon()
        {
            if (MaDonHangLookUpEdit.EditValue != null){ 
            grvCTHoaDon.DataSource = null;
            grvCTHoaDon.DataSource = hoaDonBLL_DAL.loadCTDonBanHang(MaDonHangLookUpEdit.EditValue.ToString());
            gridView2.Columns["Size"].Visible = false;
            gridView2.Columns["MauSac"].Visible = false;
            gridView2.Columns["SanPham"].Visible = false;
            gridView2.Columns["HoaDonBanHang"].Visible = false;
            }
        }

        private void gridView2_RowUpdated(object sender, RowObjectEventArgs e)
        {
        }

        private void KhuyenMaiTextEdit_EditValueChanged(object sender, EventArgs e)
        {
            if ((double)KhuyenMaiSpinEdit.Value > 0) { 
                double thanhTien = (double)hoaDonBLL_DAL.getSelectedHD(MaDonHangLookUpEdit.EditValue.ToString()).ThanhTien;
                ThanhTienTextEdit.Text = (thanhTien * (100-(double)KhuyenMaiSpinEdit.Value)/100) + "";
            }
        }

        private void simpleButton3_Click(object sender, EventArgs e)
        {
            if (hoaDonBLL_DAL.ThanhToan(MaDonHangLookUpEdit.EditValue.ToString(), double.Parse(ThanhTienTextEdit.Text),int.Parse(KhuyenMaiSpinEdit.EditValue.ToString())))
            {
                MessageBox.Show("Thành công");
                MaDonHangLookUpEdit.Properties.DataSource = hoaDonBLL_DAL.loadDonBanHang(MaKhachHangLookUpEdit.EditValue.ToString()).ToList(); ;
                MaDonHangLookUpEdit.Properties.ValueMember = "MaDonHang";
                MaDonHangLookUpEdit.Properties.DisplayMember = "MaDonHang";
                MaDonHangLookUpEdit.EditValue = "";
                load_grvChiTietHoaDon();

            }
        }
    }
}