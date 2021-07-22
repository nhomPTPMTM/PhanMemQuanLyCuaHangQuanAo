
namespace DoAn_QuanLyShopThoiTrang
{
    partial class FrmTN
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmTN));
            this.container = new DevExpress.XtraBars.FluentDesignSystem.FluentDesignFormContainer();
            this.grvSanPham = new DevExpress.XtraGrid.GridControl();
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.fluentFormDefaultManager1 = new DevExpress.XtraBars.FluentDesignSystem.FluentFormDefaultManager(this.components);
            this.itemNav = new DevExpress.XtraBars.BarButtonItem();
            this.accordionControl1 = new DevExpress.XtraBars.Navigation.AccordionControl();
            this.accordionControlElementHome = new DevExpress.XtraBars.Navigation.AccordionControlElement();
            this.accordionControlElementQLKhachHang = new DevExpress.XtraBars.Navigation.AccordionControlElement();
            this.accordionControlElementQLNhanVien = new DevExpress.XtraBars.Navigation.AccordionControlElement();
            this.accordionControlElement9 = new DevExpress.XtraBars.Navigation.AccordionControlElement();
            this.accordionControlElement10 = new DevExpress.XtraBars.Navigation.AccordionControlElement();
            this.accordionControlElementProduct = new DevExpress.XtraBars.Navigation.AccordionControlElement();
            this.accordionControlElementQLHoaDon = new DevExpress.XtraBars.Navigation.AccordionControlElement();
            this.accordionControlElement1 = new DevExpress.XtraBars.Navigation.AccordionControlElement();
            this.accordionControlElement2 = new DevExpress.XtraBars.Navigation.AccordionControlElement();
            this.accordionControlElementSanPham = new DevExpress.XtraBars.Navigation.AccordionControlElement();
            this.accordionControlElement7 = new DevExpress.XtraBars.Navigation.AccordionControlElement();
            this.accordionControlElement8 = new DevExpress.XtraBars.Navigation.AccordionControlElement();
            this.accordionControlElement3 = new DevExpress.XtraBars.Navigation.AccordionControlElement();
            this.accordionControlElementLogOut = new DevExpress.XtraBars.Navigation.AccordionControlElement();
            this.fluentDesignFormControl1 = new DevExpress.XtraBars.FluentDesignSystem.FluentDesignFormControl();
            this.container.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.grvSanPham)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.fluentFormDefaultManager1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.accordionControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.fluentDesignFormControl1)).BeginInit();
            this.SuspendLayout();
            // 
            // container
            // 
            this.container.Controls.Add(this.grvSanPham);
            this.container.Dock = System.Windows.Forms.DockStyle.Fill;
            this.container.Location = new System.Drawing.Point(260, 31);
            this.container.Name = "container";
            this.container.Size = new System.Drawing.Size(1124, 492);
            this.container.TabIndex = 0;
            // 
            // grvSanPham
            // 
            this.grvSanPham.Location = new System.Drawing.Point(40, 100);
            this.grvSanPham.MainView = this.gridView1;
            this.grvSanPham.MenuManager = this.fluentFormDefaultManager1;
            this.grvSanPham.Name = "grvSanPham";
            this.grvSanPham.Size = new System.Drawing.Size(580, 359);
            this.grvSanPham.TabIndex = 0;
            this.grvSanPham.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            this.grvSanPham.Click += new System.EventHandler(this.grvSanPham_Click);
            // 
            // gridView1
            // 
            this.gridView1.GridControl = this.grvSanPham;
            this.gridView1.Name = "gridView1";
            // 
            // fluentFormDefaultManager1
            // 
            this.fluentFormDefaultManager1.DockingEnabled = false;
            this.fluentFormDefaultManager1.Form = this;
            this.fluentFormDefaultManager1.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.itemNav});
            this.fluentFormDefaultManager1.MaxItemId = 1;
            // 
            // itemNav
            // 
            this.itemNav.Caption = "barButtonItem1";
            this.itemNav.Id = 0;
            this.itemNav.Name = "itemNav";
            // 
            // accordionControl1
            // 
            this.accordionControl1.Appearance.Group.Hovered.Font = new System.Drawing.Font("Tahoma", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.accordionControl1.Appearance.Group.Hovered.Options.UseFont = true;
            this.accordionControl1.Appearance.Group.Normal.Font = new System.Drawing.Font("Tahoma", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.accordionControl1.Appearance.Group.Normal.Options.UseFont = true;
            this.accordionControl1.Appearance.Item.Hovered.Font = new System.Drawing.Font("Tahoma", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.accordionControl1.Appearance.Item.Hovered.Options.UseFont = true;
            this.accordionControl1.Appearance.Item.Normal.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.accordionControl1.Appearance.Item.Normal.Options.UseFont = true;
            this.accordionControl1.Appearance.Item.Pressed.Font = new System.Drawing.Font("Tahoma", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.accordionControl1.Appearance.Item.Pressed.Options.UseFont = true;
            this.accordionControl1.Dock = System.Windows.Forms.DockStyle.Left;
            this.accordionControl1.Elements.AddRange(new DevExpress.XtraBars.Navigation.AccordionControlElement[] {
            this.accordionControlElementHome,
            this.accordionControlElementQLKhachHang,
            this.accordionControlElementQLNhanVien,
            this.accordionControlElementProduct,
            this.accordionControlElementQLHoaDon,
            this.accordionControlElementSanPham,
            this.accordionControlElement3,
            this.accordionControlElementLogOut});
            this.accordionControl1.Location = new System.Drawing.Point(0, 31);
            this.accordionControl1.Name = "accordionControl1";
            this.accordionControl1.ScrollBarMode = DevExpress.XtraBars.Navigation.ScrollBarMode.Touch;
            this.accordionControl1.ShowFilterControl = DevExpress.XtraBars.Navigation.ShowFilterControl.Always;
            this.accordionControl1.Size = new System.Drawing.Size(260, 492);
            this.accordionControl1.TabIndex = 1;
            this.accordionControl1.ViewType = DevExpress.XtraBars.Navigation.AccordionControlViewType.HamburgerMenu;
            // 
            // accordionControlElementHome
            // 
            this.accordionControlElementHome.Appearance.Normal.Font = new System.Drawing.Font("Tahoma", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.accordionControlElementHome.Appearance.Normal.Options.UseFont = true;
            this.accordionControlElementHome.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("accordionControlElementHome.ImageOptions.Image")));
            this.accordionControlElementHome.ImageOptions.ImageLayoutMode = DevExpress.XtraBars.Navigation.ImageLayoutMode.Squeeze;
            this.accordionControlElementHome.Name = "accordionControlElementHome";
            this.accordionControlElementHome.Style = DevExpress.XtraBars.Navigation.ElementStyle.Item;
            this.accordionControlElementHome.Text = "Home";
            this.accordionControlElementHome.Click += new System.EventHandler(this.accordionControlElementHome_Click);
            // 
            // accordionControlElementQLKhachHang
            // 
            this.accordionControlElementQLKhachHang.Appearance.Normal.Font = new System.Drawing.Font("Tahoma", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.accordionControlElementQLKhachHang.Appearance.Normal.Options.UseFont = true;
            this.accordionControlElementQLKhachHang.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("accordionControlElementQLKhachHang.ImageOptions.Image")));
            this.accordionControlElementQLKhachHang.ImageOptions.ImageLayoutMode = DevExpress.XtraBars.Navigation.ImageLayoutMode.Squeeze;
            this.accordionControlElementQLKhachHang.Name = "accordionControlElementQLKhachHang";
            this.accordionControlElementQLKhachHang.Style = DevExpress.XtraBars.Navigation.ElementStyle.Item;
            this.accordionControlElementQLKhachHang.Text = "Thêm khách hàng";
            this.accordionControlElementQLKhachHang.Click += new System.EventHandler(this.accordionControlElementQLKhachHang_Click);
            // 
            // accordionControlElementQLNhanVien
            // 
            this.accordionControlElementQLNhanVien.Elements.AddRange(new DevExpress.XtraBars.Navigation.AccordionControlElement[] {
            this.accordionControlElement9,
            this.accordionControlElement10});
            this.accordionControlElementQLNhanVien.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("accordionControlElementQLNhanVien.ImageOptions.Image")));
            this.accordionControlElementQLNhanVien.ImageOptions.ImageLayoutMode = DevExpress.XtraBars.Navigation.ImageLayoutMode.Squeeze;
            this.accordionControlElementQLNhanVien.Name = "accordionControlElementQLNhanVien";
            this.accordionControlElementQLNhanVien.Text = "Quản lý nhân viên";
            // 
            // accordionControlElement9
            // 
            this.accordionControlElement9.Name = "accordionControlElement9";
            this.accordionControlElement9.Style = DevExpress.XtraBars.Navigation.ElementStyle.Item;
            this.accordionControlElement9.Text = "Quản lý nhân viên";
            // 
            // accordionControlElement10
            // 
            this.accordionControlElement10.Name = "accordionControlElement10";
            this.accordionControlElement10.Style = DevExpress.XtraBars.Navigation.ElementStyle.Item;
            this.accordionControlElement10.Text = "Quản lý phân quyền";
            // 
            // accordionControlElementProduct
            // 
            this.accordionControlElementProduct.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("accordionControlElementProduct.ImageOptions.Image")));
            this.accordionControlElementProduct.ImageOptions.ImageLayoutMode = DevExpress.XtraBars.Navigation.ImageLayoutMode.Squeeze;
            this.accordionControlElementProduct.Name = "accordionControlElementProduct";
            this.accordionControlElementProduct.Tag = "MH001";
            this.accordionControlElementProduct.Text = "Products";
            this.accordionControlElementProduct.Visible = false;
            this.accordionControlElementProduct.Click += new System.EventHandler(this.accordionControlElementProduct_Click);
            // 
            // accordionControlElementQLHoaDon
            // 
            this.accordionControlElementQLHoaDon.Elements.AddRange(new DevExpress.XtraBars.Navigation.AccordionControlElement[] {
            this.accordionControlElement1,
            this.accordionControlElement2});
            this.accordionControlElementQLHoaDon.Expanded = true;
            this.accordionControlElementQLHoaDon.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("accordionControlElementQLHoaDon.ImageOptions.Image")));
            this.accordionControlElementQLHoaDon.ImageOptions.ImageLayoutMode = DevExpress.XtraBars.Navigation.ImageLayoutMode.Squeeze;
            this.accordionControlElementQLHoaDon.Name = "accordionControlElementQLHoaDon";
            this.accordionControlElementQLHoaDon.Tag = "MH002";
            this.accordionControlElementQLHoaDon.Text = "Quản lý hóa đơn";
            this.accordionControlElementQLHoaDon.Visible = false;
            // 
            // accordionControlElement1
            // 
            this.accordionControlElement1.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("accordionControlElement1.ImageOptions.Image")));
            this.accordionControlElement1.ImageOptions.ImageLayoutMode = DevExpress.XtraBars.Navigation.ImageLayoutMode.Squeeze;
            this.accordionControlElement1.Name = "accordionControlElement1";
            this.accordionControlElement1.Style = DevExpress.XtraBars.Navigation.ElementStyle.Item;
            this.accordionControlElement1.Text = "Đơn hàng đã bán";
            this.accordionControlElement1.Click += new System.EventHandler(this.accordionControlElement1_Click);
            // 
            // accordionControlElement2
            // 
            this.accordionControlElement2.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("accordionControlElement2.ImageOptions.Image")));
            this.accordionControlElement2.ImageOptions.ImageLayoutMode = DevExpress.XtraBars.Navigation.ImageLayoutMode.Squeeze;
            this.accordionControlElement2.Name = "accordionControlElement2";
            this.accordionControlElement2.Style = DevExpress.XtraBars.Navigation.ElementStyle.Item;
            this.accordionControlElement2.Text = "Đơn hàng đang tạo";
            this.accordionControlElement2.Click += new System.EventHandler(this.accordionControlElement2_Click);
            // 
            // accordionControlElementSanPham
            // 
            this.accordionControlElementSanPham.Elements.AddRange(new DevExpress.XtraBars.Navigation.AccordionControlElement[] {
            this.accordionControlElement7,
            this.accordionControlElement8});
            this.accordionControlElementSanPham.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("accordionControlElementSanPham.ImageOptions.Image")));
            this.accordionControlElementSanPham.ImageOptions.ImageLayoutMode = DevExpress.XtraBars.Navigation.ImageLayoutMode.Squeeze;
            this.accordionControlElementSanPham.Name = "accordionControlElementSanPham";
            this.accordionControlElementSanPham.Text = "Quản lý kho hàng";
            // 
            // accordionControlElement7
            // 
            this.accordionControlElement7.Name = "accordionControlElement7";
            this.accordionControlElement7.Style = DevExpress.XtraBars.Navigation.ElementStyle.Item;
            this.accordionControlElement7.Text = "Quản lý sản phẩm";
            this.accordionControlElement7.Click += new System.EventHandler(this.accordionControlElement7_Click);
            // 
            // accordionControlElement8
            // 
            this.accordionControlElement8.Name = "accordionControlElement8";
            this.accordionControlElement8.Style = DevExpress.XtraBars.Navigation.ElementStyle.Item;
            this.accordionControlElement8.Text = "Quản lý danh mục hình";
            // 
            // accordionControlElement3
            // 
            this.accordionControlElement3.Appearance.Normal.Font = new System.Drawing.Font("Tahoma", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.accordionControlElement3.Appearance.Normal.Options.UseFont = true;
            this.accordionControlElement3.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("accordionControlElement3.ImageOptions.Image")));
            this.accordionControlElement3.ImageOptions.ImageLayoutMode = DevExpress.XtraBars.Navigation.ImageLayoutMode.Squeeze;
            this.accordionControlElement3.Name = "accordionControlElement3";
            this.accordionControlElement3.Style = DevExpress.XtraBars.Navigation.ElementStyle.Item;
            this.accordionControlElement3.Text = "Tài khoản";
            this.accordionControlElement3.Click += new System.EventHandler(this.accordionControlElement3_Click);
            // 
            // accordionControlElementLogOut
            // 
            this.accordionControlElementLogOut.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("accordionControlElementLogOut.ImageOptions.Image")));
            this.accordionControlElementLogOut.Name = "accordionControlElementLogOut";
            this.accordionControlElementLogOut.Style = DevExpress.XtraBars.Navigation.ElementStyle.Item;
            this.accordionControlElementLogOut.Text = "LOG OUT";
            this.accordionControlElementLogOut.Click += new System.EventHandler(this.accordionControlElementLogOut_Click);
            // 
            // fluentDesignFormControl1
            // 
            this.fluentDesignFormControl1.FluentDesignForm = this;
            this.fluentDesignFormControl1.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.itemNav});
            this.fluentDesignFormControl1.Location = new System.Drawing.Point(0, 0);
            this.fluentDesignFormControl1.Manager = this.fluentFormDefaultManager1;
            this.fluentDesignFormControl1.Name = "fluentDesignFormControl1";
            this.fluentDesignFormControl1.Size = new System.Drawing.Size(1384, 31);
            this.fluentDesignFormControl1.TabIndex = 2;
            this.fluentDesignFormControl1.TabStop = false;
            this.fluentDesignFormControl1.TitleItemLinks.Add(this.itemNav);
            // 
            // FrmTN
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1384, 523);
            this.ControlContainer = this.container;
            this.Controls.Add(this.container);
            this.Controls.Add(this.accordionControl1);
            this.Controls.Add(this.fluentDesignFormControl1);
            this.FluentDesignFormControl = this.fluentDesignFormControl1;
            this.Name = "FrmTN";
            this.NavigationControl = this.accordionControl1;
            this.Text = "FrmTN";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.FrmTN_FormClosed);
            this.Load += new System.EventHandler(this.FrmTN_Load);
            this.container.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.grvSanPham)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.fluentFormDefaultManager1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.accordionControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.fluentDesignFormControl1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion
        private DevExpress.XtraBars.FluentDesignSystem.FluentDesignFormContainer container;
        private DevExpress.XtraBars.Navigation.AccordionControl accordionControl1;
        private DevExpress.XtraBars.FluentDesignSystem.FluentDesignFormControl fluentDesignFormControl1;
        private DevExpress.XtraBars.Navigation.AccordionControlElement accordionControlElementHome;
        private DevExpress.XtraBars.FluentDesignSystem.FluentFormDefaultManager fluentFormDefaultManager1;
        private DevExpress.XtraBars.Navigation.AccordionControlElement accordionControlElementProduct;
        private DevExpress.XtraBars.Navigation.AccordionControlElement accordionControlElementLogOut;
        private DevExpress.XtraBars.BarButtonItem itemNav;
        private DevExpress.XtraGrid.GridControl grvSanPham;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraBars.Navigation.AccordionControlElement accordionControlElementQLKhachHang;
        private DevExpress.XtraBars.Navigation.AccordionControlElement accordionControlElementQLNhanVien;
        private DevExpress.XtraBars.Navigation.AccordionControlElement accordionControlElement9;
        private DevExpress.XtraBars.Navigation.AccordionControlElement accordionControlElement10;
        private DevExpress.XtraBars.Navigation.AccordionControlElement accordionControlElementQLHoaDon;
        private DevExpress.XtraBars.Navigation.AccordionControlElement accordionControlElementSanPham;
        private DevExpress.XtraBars.Navigation.AccordionControlElement accordionControlElement7;
        private DevExpress.XtraBars.Navigation.AccordionControlElement accordionControlElement8;
        private DevExpress.XtraBars.Navigation.AccordionControlElement accordionControlElement1;
        private DevExpress.XtraBars.Navigation.AccordionControlElement accordionControlElement2;
        private DevExpress.XtraBars.Navigation.AccordionControlElement accordionControlElement3;
    }
}