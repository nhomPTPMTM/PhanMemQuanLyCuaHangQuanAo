using BLL_DAL;
using DevExpress.XtraBars;
using DevExpress.XtraBars.Navigation;
using DevExpress.XtraEditors;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid;
using GUI;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace DoAn_QuanLyShopThoiTrang
{
    public partial class FrmTN : DevExpress.XtraBars.FluentDesignSystem.FluentDesignForm
    {
        LoaiSanPhamBLL_DAL loaiSanPham = new LoaiSanPhamBLL_DAL();
        AccordionControlElement[] listAccord = null;
        SanPhamBLL sanPhamBLL = new SanPhamBLL();
        NhanVienBLL_DAL nhanVienBLL_DAL = new NhanVienBLL_DAL();
        List<SanPham> listSanPham = null;
        SetupControls setupControls = new SetupControls();
        List<LoaiSanPham> listTypes = new List<LoaiSanPham>();
        string maDanhMuc = "";
        public FrmTN()
        {
            InitializeComponent();
        }

        private void FrmTN_FormClosed(object sender, FormClosedEventArgs e)
        {
            Program.frmLogin.Show();
        }
        private void setupAccordionControlElement(AccordionControlElement accordionControlElement, int position, string name, string text,string urlFile)
        {
            PictureEdit pictureBox = new PictureEdit();
            setupControls.setupPicture(pictureBox, urlFile);
            
            accordionControlElement.ImageOptions.Image = pictureBox.Image;
            accordionControlElement.ImageOptions.ImageLayoutMode = DevExpress.XtraBars.Navigation.ImageLayoutMode.Stretch;
            accordionControlElement.Name = name;
            accordionControlElement.Style = DevExpress.XtraBars.Navigation.ElementStyle.Item;
            accordionControlElement.Text = text;
            listAccord[position] = accordionControlElement;
        }
        private void setupItem_TypesProduct()
        {
            List<LoaiSanPham> listTypes = loaiSanPham.load_DSLoai().ToList<LoaiSanPham>();
            //Setup length for danh sach loai san pham 
            listAccord = new AccordionControlElement[listTypes.Count()];
            //Setup item product
            for (int i = 0; i < listAccord.Count(); i++)
            {
                AccordionControlElement a = new AccordionControlElement();
                setupAccordionControlElement(a, i, "loaiSP" + listTypes[i].MaDanhMuc, listTypes[i].TenLoaiSanPham,Program.linkURL_LoaiSP+listTypes[i].HinhAnh);
                a.Click += ItemProduct_Click;
                a.Tag = listTypes[i].MaLoaiSanPham;
            }
            //
            this.accordionControlElementProduct.Elements.AddRange(listAccord);
        }

        private void ItemProduct_Click(object sender, EventArgs e)
        {
            AccordionControlElement ctr = (AccordionControlElement)sender;
            this.itemNav.Caption = $"{ctr.Text}";
            this.container.Controls.Clear();
            ucThuNgan ucTN = new ucThuNgan(ctr.Tag.ToString());
            this.container.Controls.Add(ucTN);
        }

        private void gridView_FocusedRowChanged(object sender, FocusedRowChangedEventArgs e)
        {
            int left = 630, top = 100;
            string ID = gridView1.GetFocusedRowCellValue("MaSanPham").ToString();
            if (this.container.Controls.Count == 3) { 
            this.container.Controls.Remove(this.container.Controls[2]);
            }
            PanelControl panelControl = new PanelControl();
            setupPanelProduct(panelControl, left, top, sanPhamBLL.detailSanpham(ID));
        }

        void createSeachControl()
        {
            SearchControl searchControl = new SearchControl();
            searchControl.Location = new System.Drawing.Point(531, 25);
            searchControl.MenuManager = this.fluentFormDefaultManager1;
            searchControl.Name = "searchControl";
            searchControl.Properties.Appearance.Font = new System.Drawing.Font("Tahoma", 16F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            searchControl.Properties.Appearance.Options.UseFont = true;
            searchControl.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Repository.ClearButton(),
            new DevExpress.XtraEditors.Repository.SearchButton()});
            searchControl.Size = new System.Drawing.Size(606, 48);
            this.container.Controls.Add(searchControl);
            searchControl.TextChanged += SearchControl_TextChanged;
        }
        private void SearchControl_TextChanged(object sender, EventArgs e)
        {
            SearchControl ctr = new SearchControl();
            List<SanPham> tenSp = new List<SanPham>();
            foreach (SanPham item in listSanPham)
            {
                if (item.TenSanPham.Contains(ctr.Text))
                    tenSp.Add(item);
            }
            SanPham[] kq = tenSp.ToArray();
            ListBoxControl listBoxControl = new ListBoxControl();
            listBoxControl.Items.AddRange(kq);
            ctr.Client = listBoxControl;
        }
        private void setupPanelProduct(DevExpress.XtraEditors.PanelControl panelControl, int topPos, int leftPos, SanPham sanpham)
        {
            panelControl = new DevExpress.XtraEditors.PanelControl();
            this.container.Controls.Add(panelControl);
            panelControl.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.Style3D;

            PictureEdit pictureEdit = new PictureEdit();
            setupControls.setupPicture(pictureEdit, Program.linkURL_SanPham +maDanhMuc+"\\"+sanpham.MaLoaiSanPham+"\\"+sanpham.TenSanPham+"\\"+sanpham.DanhMucHinhs[0].TenHinh);
            panelControl.Controls.Add(pictureEdit);
            pictureEdit.Location = new System.Drawing.Point(5, 5);
            pictureEdit.Size = new System.Drawing.Size(265, 390);
            pictureEdit.Tag = sanpham.MaSanPham;
            pictureEdit.Click += PictureEdit_Click;

            int top = 29, left = 286;

            LabelControl labelTenSanPham = new LabelControl();
            setupControls.setupLabel(labelTenSanPham, top, left, sanpham.TenSanPham);
            panelControl.Controls.Add(labelTenSanPham);
            top += 80;

            LabelControl labelTrangThai = new LabelControl();
            string trangthai = sanpham.TrangThai == true ? "Còn Hàng" : "Hết Hàng";
            setupControls.setupLabel(labelTrangThai, top, left, "Trạng thái: " + trangthai);
            panelControl.Controls.Add(labelTrangThai);
            top += 30;

            LabelControl labelSoLuongTon = new LabelControl();
            setupControls.setupLabel(labelSoLuongTon, top, left, "Số lượng: " + sanpham.SoLuongTon + " hàng");
            panelControl.Controls.Add(labelSoLuongTon);
            top += 30;

            LabelControl labelDonGia = new LabelControl();
            setupControls.setupLabel(labelDonGia, top, left, "Đơn giá: " + sanpham.DonGia + " VND");
            labelDonGia.Font = new Font(labelDonGia.Font, FontStyle.Bold);
            labelDonGia.ForeColor = Color.Red;
            panelControl.Controls.Add(labelDonGia);
            top += 80;

            SimpleButton btnBuy = new SimpleButton();
            setupControls.setupButton(btnBuy, top, left, sanpham.MaSanPham, "BUY PRODUCT", sanpham.MaSanPham);
            btnBuy.Click += BtnBuy_Click;
            panelControl.Controls.Add(btnBuy);
            top += 60;

            SimpleButton btnDetail = new SimpleButton();
            setupControls.setupButton(btnDetail, top, left, sanpham.MaSanPham, "DETAIL PRODUCT", sanpham.MaSanPham);
            panelControl.Controls.Add(btnDetail);
            btnDetail.Click += BtnDetail_Click;

            panelControl.Location = new System.Drawing.Point(topPos, leftPos);
            panelControl.Size = new System.Drawing.Size(480, 400);
        }

        private void PictureEdit_Click(object sender, EventArgs e)
        {
            throw new NotImplementedException();
        }

        private void BtnBuy_Click(object sender, EventArgs e)
        {
            throw new NotImplementedException();
        }

        private void BtnDetail_Click(object sender, EventArgs e)
        {
            throw new NotImplementedException();
        }

        private void FrmTN_Load(object sender, EventArgs e)
        {

            this.itemNav.Caption = $"Home";
            this.container.Controls.Clear();
            ucHome ucHome = new ucHome();
            ucHome.Dock = DockStyle.Fill;
            this.container.Controls.Add(ucHome);
            List<ChiTietPhanQuyen> lst = nhanVienBLL_DAL.GetDMManHinhs(DoAn_QuanLyShopThoiTrang.Properties.Settings.Default.MaNV);
            foreach (ChiTietPhanQuyen i in lst)
            {
                FindMenuPhanQuyen(this.accordionControl1, i.MaManHinh, Convert.ToBoolean(i.CoQuyen));
            }
            setupItem_TypesProduct();
        }

        private void grvSanPham_Click(object sender, EventArgs e)
        {

        }

        private void accordionControlElementProduct_Click(object sender, EventArgs e)
        {

        }
        private void FindMenuPhanQuyen(AccordionControl mnuItems, string pScreenName, bool pEnable)
        {
            foreach (AccordionControlElement menu in mnuItems.Elements)
            {
                if (string.Equals(pScreenName, menu.Tag))
                {
                    menu.Enabled = pEnable;
                    menu.Visible = pEnable;
                }
            }
        }

        private bool CheckAllMenuChildVisible(ToolStripItemCollection mnuItems)
        {
            foreach (ToolStripItem menuItem in mnuItems)
            {
                if (menuItem is ToolStripMenuItem && menuItem.Enabled)
                {
                    return true;
                }
                else if (menuItem is ToolStripSeparator)
                {
                    continue;
                }
            }
            return false;
        }

        private void accordionControlElement7_Click(object sender, EventArgs e)
        {
            AccordionControlElement ctr = (AccordionControlElement)sender;
            this.itemNav.Caption = $"{ctr.Text}";
            this.container.Controls.Clear();
            ucQLSanPham qLSanPham = new ucQLSanPham();
            this.container.Controls.Add(qLSanPham);
        }

        private void accordionControlElement1_Click(object sender, EventArgs e)
        {
            AccordionControlElement ctr = (AccordionControlElement)sender;
            this.itemNav.Caption = $"{ctr.Text}";
            this.container.Controls.Clear();
            ucQLHoaDonDaBan ucQLHoaDonDaBan = new ucQLHoaDonDaBan();
            this.container.Controls.Add(ucQLHoaDonDaBan);
        }

        private void accordionControlElementLogOut_Click(object sender, EventArgs e)
        {
            DialogResult r = MessageBox.Show("Do you want to log out?", "LOG OUT", MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button1);
            if (r == DialogResult.Yes)
            {
                this.Close();
                if (Program.frmLogin == null)
                {
                    Program.frmLogin = new FrmLogin();
                    Program.frmLogin.Show();
                }
                Program.frmLogin.Show();
            }
        }

        private void accordionControlElementHome_Click(object sender, EventArgs e)
        {
            AccordionControlElement ctr = (AccordionControlElement)sender;
            this.itemNav.Caption = $"{ctr.Text}";
            this.container.Controls.Clear();
            ucHome ucHome = new ucHome();
            this.container.Controls.Add(ucHome);
        }
    }
}
