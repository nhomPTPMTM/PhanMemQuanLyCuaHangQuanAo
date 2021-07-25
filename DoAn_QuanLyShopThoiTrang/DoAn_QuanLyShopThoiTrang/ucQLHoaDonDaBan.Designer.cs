
namespace DoAn_QuanLyShopThoiTrang
{
    partial class ucQLHoaDonDaBan
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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            DevExpress.XtraGrid.GridLevelNode gridLevelNode1 = new DevExpress.XtraGrid.GridLevelNode();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(ucQLHoaDonDaBan));
            this.gridView2 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.grv_HoaDonDaBan = new DevExpress.XtraGrid.GridControl();
            this.hoaDonBanHangsBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colMaDonHang = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMaKhachHang = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colKhachHang = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMaNhanVien = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colNhanVien = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colNgayTao = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colThanhTien = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colKhuyenMai = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTrangThai = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colGhiChu = new DevExpress.XtraGrid.Columns.GridColumn();
            this.tablePanel1 = new DevExpress.Utils.Layout.TablePanel();
            this.pictureEdit2 = new DevExpress.XtraEditors.PictureEdit();
            this.groupControl3 = new DevExpress.XtraEditors.GroupControl();
            this.tablePanel2 = new DevExpress.Utils.Layout.TablePanel();
            this.lblTenSP = new DevExpress.XtraEditors.LabelControl();
            this.lblDonGia = new DevExpress.XtraEditors.LabelControl();
            this.lblSoLuong = new DevExpress.XtraEditors.LabelControl();
            this.memoEditMoTa = new DevExpress.XtraEditors.MemoEdit();
            this.pictureEdit1 = new DevExpress.XtraEditors.PictureEdit();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl5 = new DevExpress.XtraEditors.LabelControl();
            this.lblMaDon = new DevExpress.XtraEditors.LabelControl();
            this.groupControl2 = new DevExpress.XtraEditors.GroupControl();
            this.chiTietDonBanHangsBindingSource = new System.Windows.Forms.BindingSource(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.gridView2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.grv_HoaDonDaBan)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.hoaDonBanHangsBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tablePanel1)).BeginInit();
            this.tablePanel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureEdit2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl3)).BeginInit();
            this.groupControl3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.tablePanel2)).BeginInit();
            this.tablePanel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.memoEditMoTa.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl2)).BeginInit();
            this.groupControl2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.chiTietDonBanHangsBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // gridView2
            // 
            this.gridView2.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gridColumn1});
            this.gridView2.GridControl = this.grv_HoaDonDaBan;
            this.gridView2.Name = "gridView2";
            // 
            // gridColumn1
            // 
            this.gridColumn1.Caption = "gridColumn1";
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.Visible = true;
            this.gridColumn1.VisibleIndex = 0;
            // 
            // grv_HoaDonDaBan
            // 
            this.grv_HoaDonDaBan.DataMember = null;
            this.grv_HoaDonDaBan.DataSource = this.hoaDonBanHangsBindingSource;
            this.grv_HoaDonDaBan.Dock = System.Windows.Forms.DockStyle.Fill;
            gridLevelNode1.LevelTemplate = this.gridView2;
            gridLevelNode1.RelationName = "Level1";
            this.grv_HoaDonDaBan.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            this.grv_HoaDonDaBan.Location = new System.Drawing.Point(2, 23);
            this.grv_HoaDonDaBan.MainView = this.gridView1;
            this.grv_HoaDonDaBan.Name = "grv_HoaDonDaBan";
            this.grv_HoaDonDaBan.Size = new System.Drawing.Size(512, 351);
            this.grv_HoaDonDaBan.TabIndex = 0;
            this.grv_HoaDonDaBan.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1,
            this.gridView2});
            this.grv_HoaDonDaBan.FocusedViewChanged += new DevExpress.XtraGrid.ViewFocusEventHandler(this.grv_HoaDonDaBan_FocusedViewChanged);
            this.grv_HoaDonDaBan.Click += new System.EventHandler(this.grv_HoaDonDaBan_Click);
            // 
            // hoaDonBanHangsBindingSource
            // 
            this.hoaDonBanHangsBindingSource.DataSource = typeof(BLL_DAL.HoaDonBanHang);
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colMaDonHang,
            this.colMaKhachHang,
            this.colKhachHang,
            this.colMaNhanVien,
            this.colNhanVien,
            this.colNgayTao,
            this.colThanhTien,
            this.colKhuyenMai,
            this.colTrangThai,
            this.colGhiChu});
            this.gridView1.GridControl = this.grv_HoaDonDaBan;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsFind.FindDelay = 100;
            this.gridView1.OptionsFind.SearchInPreview = true;
            this.gridView1.MasterRowExpanded += new DevExpress.XtraGrid.Views.Grid.CustomMasterRowEventHandler(this.gridView1_MasterRowExpanded);
            // 
            // colMaDonHang
            // 
            this.colMaDonHang.FieldName = "MaDonHang";
            this.colMaDonHang.Name = "colMaDonHang";
            this.colMaDonHang.Visible = true;
            this.colMaDonHang.VisibleIndex = 0;
            // 
            // colMaKhachHang
            // 
            this.colMaKhachHang.FieldName = "MaKhachHang";
            this.colMaKhachHang.Name = "colMaKhachHang";
            // 
            // colKhachHang
            // 
            this.colKhachHang.FieldName = "KhachHang.TenKhachHang";
            this.colKhachHang.Name = "colKhachHang";
            this.colKhachHang.Visible = true;
            this.colKhachHang.VisibleIndex = 1;
            // 
            // colMaNhanVien
            // 
            this.colMaNhanVien.FieldName = "MaNhanVien";
            this.colMaNhanVien.Name = "colMaNhanVien";
            // 
            // colNhanVien
            // 
            this.colNhanVien.FieldName = "NhanVien.TenNhanVien";
            this.colNhanVien.Name = "colNhanVien";
            this.colNhanVien.Visible = true;
            this.colNhanVien.VisibleIndex = 2;
            // 
            // colNgayTao
            // 
            this.colNgayTao.FieldName = "NgayTao";
            this.colNgayTao.Name = "colNgayTao";
            this.colNgayTao.Visible = true;
            this.colNgayTao.VisibleIndex = 3;
            // 
            // colThanhTien
            // 
            this.colThanhTien.FieldName = "ThanhTien";
            this.colThanhTien.Name = "colThanhTien";
            this.colThanhTien.Visible = true;
            this.colThanhTien.VisibleIndex = 4;
            // 
            // colKhuyenMai
            // 
            this.colKhuyenMai.FieldName = "KhuyenMai";
            this.colKhuyenMai.Name = "colKhuyenMai";
            this.colKhuyenMai.Visible = true;
            this.colKhuyenMai.VisibleIndex = 5;
            // 
            // colTrangThai
            // 
            this.colTrangThai.FieldName = "TrangThai";
            this.colTrangThai.Name = "colTrangThai";
            // 
            // colGhiChu
            // 
            this.colGhiChu.FieldName = "GhiChu";
            this.colGhiChu.Name = "colGhiChu";
            // 
            // tablePanel1
            // 
            this.tablePanel1.Columns.AddRange(new DevExpress.Utils.Layout.TablePanelColumn[] {
            new DevExpress.Utils.Layout.TablePanelColumn(DevExpress.Utils.Layout.TablePanelEntityStyle.Relative, 29.13F),
            new DevExpress.Utils.Layout.TablePanelColumn(DevExpress.Utils.Layout.TablePanelEntityStyle.Relative, 30.87F)});
            this.tablePanel1.Controls.Add(this.pictureEdit2);
            this.tablePanel1.Controls.Add(this.groupControl3);
            this.tablePanel1.Controls.Add(this.lblMaDon);
            this.tablePanel1.Controls.Add(this.groupControl2);
            this.tablePanel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tablePanel1.Location = new System.Drawing.Point(0, 0);
            this.tablePanel1.Name = "tablePanel1";
            this.tablePanel1.Rows.AddRange(new DevExpress.Utils.Layout.TablePanelRow[] {
            new DevExpress.Utils.Layout.TablePanelRow(DevExpress.Utils.Layout.TablePanelEntityStyle.Absolute, 47F),
            new DevExpress.Utils.Layout.TablePanelRow(DevExpress.Utils.Layout.TablePanelEntityStyle.Absolute, 157F),
            new DevExpress.Utils.Layout.TablePanelRow(DevExpress.Utils.Layout.TablePanelEntityStyle.Relative, 27.07F),
            new DevExpress.Utils.Layout.TablePanelRow(DevExpress.Utils.Layout.TablePanelEntityStyle.Relative, 383.2F),
            new DevExpress.Utils.Layout.TablePanelRow(DevExpress.Utils.Layout.TablePanelEntityStyle.Relative, 15.73F)});
            this.tablePanel1.Size = new System.Drawing.Size(1075, 629);
            this.tablePanel1.TabIndex = 0;
            // 
            // pictureEdit2
            // 
            this.tablePanel1.SetColumn(this.pictureEdit2, 0);
            this.tablePanel1.SetColumnSpan(this.pictureEdit2, 2);
            this.pictureEdit2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pictureEdit2.EditValue = ((object)(resources.GetObject("pictureEdit2.EditValue")));
            this.pictureEdit2.Location = new System.Drawing.Point(3, 3);
            this.pictureEdit2.Name = "pictureEdit2";
            this.pictureEdit2.Properties.Appearance.BackColor = System.Drawing.Color.Black;
            this.pictureEdit2.Properties.Appearance.Options.UseBackColor = true;
            this.pictureEdit2.Properties.ShowCameraMenuItem = DevExpress.XtraEditors.Controls.CameraMenuItemVisibility.Auto;
            this.pictureEdit2.Properties.SizeMode = DevExpress.XtraEditors.Controls.PictureSizeMode.Squeeze;
            this.tablePanel1.SetRow(this.pictureEdit2, 0);
            this.tablePanel1.SetRowSpan(this.pictureEdit2, 2);
            this.pictureEdit2.Size = new System.Drawing.Size(1069, 198);
            this.pictureEdit2.TabIndex = 4;
            // 
            // groupControl3
            // 
            this.tablePanel1.SetColumn(this.groupControl3, 1);
            this.tablePanel1.SetColumnSpan(this.groupControl3, 3);
            this.groupControl3.Controls.Add(this.tablePanel2);
            this.groupControl3.Dock = System.Windows.Forms.DockStyle.Fill;
            this.groupControl3.Location = new System.Drawing.Point(525, 234);
            this.groupControl3.Name = "groupControl3";
            this.tablePanel1.SetRow(this.groupControl3, 3);
            this.groupControl3.Size = new System.Drawing.Size(547, 376);
            this.groupControl3.TabIndex = 3;
            this.groupControl3.Text = "Sản phẩm";
            // 
            // tablePanel2
            // 
            this.tablePanel2.Columns.AddRange(new DevExpress.Utils.Layout.TablePanelColumn[] {
            new DevExpress.Utils.Layout.TablePanelColumn(DevExpress.Utils.Layout.TablePanelEntityStyle.Relative, 74.73F),
            new DevExpress.Utils.Layout.TablePanelColumn(DevExpress.Utils.Layout.TablePanelEntityStyle.Relative, 35.07F),
            new DevExpress.Utils.Layout.TablePanelColumn(DevExpress.Utils.Layout.TablePanelEntityStyle.Relative, 43.9F),
            new DevExpress.Utils.Layout.TablePanelColumn(DevExpress.Utils.Layout.TablePanelEntityStyle.Relative, 49.35F),
            new DevExpress.Utils.Layout.TablePanelColumn(DevExpress.Utils.Layout.TablePanelEntityStyle.Relative, 6.95F)});
            this.tablePanel2.Controls.Add(this.lblTenSP);
            this.tablePanel2.Controls.Add(this.lblDonGia);
            this.tablePanel2.Controls.Add(this.lblSoLuong);
            this.tablePanel2.Controls.Add(this.memoEditMoTa);
            this.tablePanel2.Controls.Add(this.pictureEdit1);
            this.tablePanel2.Controls.Add(this.labelControl1);
            this.tablePanel2.Controls.Add(this.labelControl2);
            this.tablePanel2.Controls.Add(this.labelControl3);
            this.tablePanel2.Controls.Add(this.labelControl5);
            this.tablePanel2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tablePanel2.Location = new System.Drawing.Point(2, 23);
            this.tablePanel2.Name = "tablePanel2";
            this.tablePanel2.Rows.AddRange(new DevExpress.Utils.Layout.TablePanelRow[] {
            new DevExpress.Utils.Layout.TablePanelRow(DevExpress.Utils.Layout.TablePanelEntityStyle.Absolute, 25F),
            new DevExpress.Utils.Layout.TablePanelRow(DevExpress.Utils.Layout.TablePanelEntityStyle.Absolute, 40F),
            new DevExpress.Utils.Layout.TablePanelRow(DevExpress.Utils.Layout.TablePanelEntityStyle.Absolute, 35F),
            new DevExpress.Utils.Layout.TablePanelRow(DevExpress.Utils.Layout.TablePanelEntityStyle.Absolute, 49F),
            new DevExpress.Utils.Layout.TablePanelRow(DevExpress.Utils.Layout.TablePanelEntityStyle.Absolute, 71F),
            new DevExpress.Utils.Layout.TablePanelRow(DevExpress.Utils.Layout.TablePanelEntityStyle.Absolute, 72F),
            new DevExpress.Utils.Layout.TablePanelRow(DevExpress.Utils.Layout.TablePanelEntityStyle.Absolute, 26F)});
            this.tablePanel2.Size = new System.Drawing.Size(543, 351);
            this.tablePanel2.TabIndex = 13;
            // 
            // lblTenSP
            // 
            this.tablePanel2.SetColumn(this.lblTenSP, 2);
            this.tablePanel2.SetColumnSpan(this.lblTenSP, 2);
            this.lblTenSP.Location = new System.Drawing.Point(287, 38);
            this.lblTenSP.Name = "lblTenSP";
            this.tablePanel2.SetRow(this.lblTenSP, 1);
            this.lblTenSP.Size = new System.Drawing.Size(63, 13);
            this.lblTenSP.TabIndex = 6;
            this.lblTenSP.Text = "labelControl6";
            // 
            // lblDonGia
            // 
            this.lblDonGia.Appearance.ForeColor = System.Drawing.Color.Red;
            this.lblDonGia.Appearance.Options.UseForeColor = true;
            this.tablePanel2.SetColumn(this.lblDonGia, 2);
            this.tablePanel2.SetColumnSpan(this.lblDonGia, 2);
            this.lblDonGia.Location = new System.Drawing.Point(287, 76);
            this.lblDonGia.Name = "lblDonGia";
            this.tablePanel2.SetRow(this.lblDonGia, 2);
            this.lblDonGia.Size = new System.Drawing.Size(63, 13);
            this.lblDonGia.TabIndex = 8;
            this.lblDonGia.Text = "labelControl8";
            // 
            // lblSoLuong
            // 
            this.tablePanel2.SetColumn(this.lblSoLuong, 2);
            this.tablePanel2.SetColumnSpan(this.lblSoLuong, 2);
            this.lblSoLuong.Location = new System.Drawing.Point(287, 118);
            this.lblSoLuong.Name = "lblSoLuong";
            this.tablePanel2.SetRow(this.lblSoLuong, 3);
            this.lblSoLuong.Size = new System.Drawing.Size(63, 13);
            this.lblSoLuong.TabIndex = 7;
            this.lblSoLuong.Text = "labelControl7";
            // 
            // memoEditMoTa
            // 
            this.tablePanel2.SetColumn(this.memoEditMoTa, 2);
            this.tablePanel2.SetColumnSpan(this.memoEditMoTa, 3);
            this.memoEditMoTa.Dock = System.Windows.Forms.DockStyle.Fill;
            this.memoEditMoTa.Location = new System.Drawing.Point(287, 152);
            this.memoEditMoTa.Name = "memoEditMoTa";
            this.memoEditMoTa.Properties.ReadOnly = true;
            this.tablePanel2.SetRow(this.memoEditMoTa, 4);
            this.tablePanel2.SetRowSpan(this.memoEditMoTa, 2);
            this.memoEditMoTa.Size = new System.Drawing.Size(253, 137);
            this.memoEditMoTa.TabIndex = 12;
            // 
            // pictureEdit1
            // 
            this.tablePanel2.SetColumn(this.pictureEdit1, 0);
            this.pictureEdit1.Location = new System.Drawing.Point(3, 31);
            this.pictureEdit1.Name = "pictureEdit1";
            this.pictureEdit1.Properties.ShowCameraMenuItem = DevExpress.XtraEditors.Controls.CameraMenuItemVisibility.Auto;
            this.tablePanel2.SetRow(this.pictureEdit1, 0);
            this.tablePanel2.SetRowSpan(this.pictureEdit1, 7);
            this.pictureEdit1.Size = new System.Drawing.Size(187, 289);
            this.pictureEdit1.TabIndex = 0;
            // 
            // labelControl1
            // 
            this.labelControl1.Appearance.Font = new System.Drawing.Font("Tahoma", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelControl1.Appearance.Options.UseFont = true;
            this.labelControl1.Appearance.Options.UseTextOptions = true;
            this.labelControl1.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.tablePanel2.SetColumn(this.labelControl1, 1);
            this.labelControl1.Location = new System.Drawing.Point(196, 38);
            this.labelControl1.Name = "labelControl1";
            this.tablePanel2.SetRow(this.labelControl1, 1);
            this.labelControl1.Size = new System.Drawing.Size(82, 13);
            this.labelControl1.TabIndex = 1;
            this.labelControl1.Text = "Tên sản phẩm:";
            // 
            // labelControl2
            // 
            this.labelControl2.Appearance.Font = new System.Drawing.Font("Tahoma", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelControl2.Appearance.Options.UseFont = true;
            this.tablePanel2.SetColumn(this.labelControl2, 1);
            this.labelControl2.Location = new System.Drawing.Point(196, 76);
            this.labelControl2.Name = "labelControl2";
            this.tablePanel2.SetRow(this.labelControl2, 2);
            this.labelControl2.Size = new System.Drawing.Size(46, 13);
            this.labelControl2.TabIndex = 2;
            this.labelControl2.Text = "Đơn giá:";
            // 
            // labelControl3
            // 
            this.labelControl3.Appearance.Font = new System.Drawing.Font("Tahoma", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelControl3.Appearance.Options.UseFont = true;
            this.tablePanel2.SetColumn(this.labelControl3, 1);
            this.labelControl3.Location = new System.Drawing.Point(196, 118);
            this.labelControl3.Name = "labelControl3";
            this.tablePanel2.SetRow(this.labelControl3, 3);
            this.labelControl3.Size = new System.Drawing.Size(80, 13);
            this.labelControl3.TabIndex = 3;
            this.labelControl3.Text = "Số lượng mua:";
            // 
            // labelControl5
            // 
            this.labelControl5.Appearance.Font = new System.Drawing.Font("Tahoma", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelControl5.Appearance.Options.UseFont = true;
            this.tablePanel2.SetColumn(this.labelControl5, 1);
            this.labelControl5.Location = new System.Drawing.Point(196, 178);
            this.labelControl5.Name = "labelControl5";
            this.tablePanel2.SetRow(this.labelControl5, 4);
            this.labelControl5.Size = new System.Drawing.Size(35, 13);
            this.labelControl5.TabIndex = 5;
            this.labelControl5.Text = "Mô tả:";
            // 
            // lblMaDon
            // 
            this.tablePanel1.SetColumn(this.lblMaDon, 0);
            this.lblMaDon.Location = new System.Drawing.Point(3, 211);
            this.lblMaDon.Name = "lblMaDon";
            this.tablePanel1.SetRow(this.lblMaDon, 2);
            this.lblMaDon.Size = new System.Drawing.Size(63, 13);
            this.lblMaDon.TabIndex = 3;
            this.lblMaDon.Text = "labelControl1";
            // 
            // groupControl2
            // 
            this.tablePanel1.SetColumn(this.groupControl2, 0);
            this.groupControl2.Controls.Add(this.grv_HoaDonDaBan);
            this.groupControl2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.groupControl2.Location = new System.Drawing.Point(3, 234);
            this.groupControl2.Name = "groupControl2";
            this.tablePanel1.SetRow(this.groupControl2, 3);
            this.groupControl2.Size = new System.Drawing.Size(516, 376);
            this.groupControl2.TabIndex = 2;
            this.groupControl2.Text = "Hóa đơn";
            // 
            // chiTietDonBanHangsBindingSource
            // 
            this.chiTietDonBanHangsBindingSource.DataSource = typeof(BLL_DAL.ChiTietDonBanHang);
            // 
            // ucQLHoaDonDaBan
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.tablePanel1);
            this.Name = "ucQLHoaDonDaBan";
            this.Size = new System.Drawing.Size(1075, 629);
            ((System.ComponentModel.ISupportInitialize)(this.gridView2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.grv_HoaDonDaBan)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.hoaDonBanHangsBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tablePanel1)).EndInit();
            this.tablePanel1.ResumeLayout(false);
            this.tablePanel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureEdit2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl3)).EndInit();
            this.groupControl3.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.tablePanel2)).EndInit();
            this.tablePanel2.ResumeLayout(false);
            this.tablePanel2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.memoEditMoTa.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl2)).EndInit();
            this.groupControl2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.chiTietDonBanHangsBindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.Utils.Layout.TablePanel tablePanel1;
        private DevExpress.XtraGrid.GridControl grv_HoaDonDaBan;
        private System.Windows.Forms.BindingSource hoaDonBanHangsBindingSource;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView2;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        private DevExpress.XtraEditors.GroupControl groupControl2;
        private System.Windows.Forms.BindingSource chiTietDonBanHangsBindingSource;
        private DevExpress.XtraGrid.Columns.GridColumn colMaDonHang;
        private DevExpress.XtraGrid.Columns.GridColumn colMaKhachHang;
        private DevExpress.XtraGrid.Columns.GridColumn colKhachHang;
        private DevExpress.XtraGrid.Columns.GridColumn colMaNhanVien;
        private DevExpress.XtraGrid.Columns.GridColumn colNhanVien;
        private DevExpress.XtraGrid.Columns.GridColumn colNgayTao;
        private DevExpress.XtraGrid.Columns.GridColumn colThanhTien;
        private DevExpress.XtraGrid.Columns.GridColumn colKhuyenMai;
        private DevExpress.XtraGrid.Columns.GridColumn colTrangThai;
        private DevExpress.XtraGrid.Columns.GridColumn colGhiChu;
        private DevExpress.XtraEditors.LabelControl lblMaDon;
        private DevExpress.XtraEditors.GroupControl groupControl3;
        private DevExpress.Utils.Layout.TablePanel tablePanel2;
        private DevExpress.XtraEditors.LabelControl lblTenSP;
        private DevExpress.XtraEditors.LabelControl lblDonGia;
        private DevExpress.XtraEditors.LabelControl lblSoLuong;
        private DevExpress.XtraEditors.MemoEdit memoEditMoTa;
        private DevExpress.XtraEditors.PictureEdit pictureEdit1;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.LabelControl labelControl5;
        private DevExpress.XtraEditors.PictureEdit pictureEdit2;
    }
}
