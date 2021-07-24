
namespace DoAn_QuanLyShopThoiTrang
{
    partial class ucHome
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
            this.tablePanel1 = new DevExpress.Utils.Layout.TablePanel();
            this.btnThongTinChiTiet = new DevExpress.XtraEditors.SimpleButton();
            this.pictureEdit2 = new DevExpress.XtraEditors.PictureEdit();
            this.pictureEdit1 = new DevExpress.XtraEditors.PictureEdit();
            this.lblWelcome = new DevExpress.XtraEditors.LabelControl();
            ((System.ComponentModel.ISupportInitialize)(this.tablePanel1)).BeginInit();
            this.tablePanel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureEdit2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureEdit1.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // tablePanel1
            // 
            this.tablePanel1.Columns.AddRange(new DevExpress.Utils.Layout.TablePanelColumn[] {
            new DevExpress.Utils.Layout.TablePanelColumn(DevExpress.Utils.Layout.TablePanelEntityStyle.Relative, 27.72F),
            new DevExpress.Utils.Layout.TablePanelColumn(DevExpress.Utils.Layout.TablePanelEntityStyle.Relative, 91.05F),
            new DevExpress.Utils.Layout.TablePanelColumn(DevExpress.Utils.Layout.TablePanelEntityStyle.Relative, 24.83F),
            new DevExpress.Utils.Layout.TablePanelColumn(DevExpress.Utils.Layout.TablePanelEntityStyle.Relative, 11.37F),
            new DevExpress.Utils.Layout.TablePanelColumn(DevExpress.Utils.Layout.TablePanelEntityStyle.Relative, 16.75F),
            new DevExpress.Utils.Layout.TablePanelColumn(DevExpress.Utils.Layout.TablePanelEntityStyle.Relative, 126.43F),
            new DevExpress.Utils.Layout.TablePanelColumn(DevExpress.Utils.Layout.TablePanelEntityStyle.Relative, 11.85F)});
            this.tablePanel1.Controls.Add(this.lblWelcome);
            this.tablePanel1.Controls.Add(this.btnThongTinChiTiet);
            this.tablePanel1.Controls.Add(this.pictureEdit2);
            this.tablePanel1.Controls.Add(this.pictureEdit1);
            this.tablePanel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tablePanel1.Location = new System.Drawing.Point(0, 0);
            this.tablePanel1.Name = "tablePanel1";
            this.tablePanel1.Rows.AddRange(new DevExpress.Utils.Layout.TablePanelRow[] {
            new DevExpress.Utils.Layout.TablePanelRow(DevExpress.Utils.Layout.TablePanelEntityStyle.Absolute, 101F),
            new DevExpress.Utils.Layout.TablePanelRow(DevExpress.Utils.Layout.TablePanelEntityStyle.Absolute, 308F),
            new DevExpress.Utils.Layout.TablePanelRow(DevExpress.Utils.Layout.TablePanelEntityStyle.Absolute, 22F),
            new DevExpress.Utils.Layout.TablePanelRow(DevExpress.Utils.Layout.TablePanelEntityStyle.Absolute, 60F),
            new DevExpress.Utils.Layout.TablePanelRow(DevExpress.Utils.Layout.TablePanelEntityStyle.Absolute, 26F)});
            this.tablePanel1.Size = new System.Drawing.Size(917, 528);
            this.tablePanel1.TabIndex = 0;
            // 
            // btnThongTinChiTiet
            // 
            this.tablePanel1.SetColumn(this.btnThongTinChiTiet, 2);
            this.tablePanel1.SetColumnSpan(this.btnThongTinChiTiet, 3);
            this.btnThongTinChiTiet.Dock = System.Windows.Forms.DockStyle.Fill;
            this.btnThongTinChiTiet.Location = new System.Drawing.Point(354, 434);
            this.btnThongTinChiTiet.Name = "btnThongTinChiTiet";
            this.tablePanel1.SetRow(this.btnThongTinChiTiet, 3);
            this.btnThongTinChiTiet.Size = new System.Drawing.Size(151, 54);
            this.btnThongTinChiTiet.TabIndex = 2;
            this.btnThongTinChiTiet.Text = "Xem thông tin chi tiết";
            this.btnThongTinChiTiet.Click += new System.EventHandler(this.btnThongTinChiTiet_Click);
            // 
            // pictureEdit2
            // 
            this.tablePanel1.SetColumn(this.pictureEdit2, 4);
            this.tablePanel1.SetColumnSpan(this.pictureEdit2, 2);
            this.pictureEdit2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pictureEdit2.EditValue = global::DoAn_QuanLyShopThoiTrang.Properties.Resources.event_360;
            this.pictureEdit2.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this.pictureEdit2.Location = new System.Drawing.Point(461, 104);
            this.pictureEdit2.Name = "pictureEdit2";
            this.pictureEdit2.Properties.ShowCameraMenuItem = DevExpress.XtraEditors.Controls.CameraMenuItemVisibility.Auto;
            this.pictureEdit2.Properties.SizeMode = DevExpress.XtraEditors.Controls.PictureSizeMode.Stretch;
            this.tablePanel1.SetRow(this.pictureEdit2, 1);
            this.pictureEdit2.Size = new System.Drawing.Size(418, 302);
            this.pictureEdit2.TabIndex = 1;
            // 
            // pictureEdit1
            // 
            this.tablePanel1.SetColumn(this.pictureEdit1, 1);
            this.tablePanel1.SetColumnSpan(this.pictureEdit1, 2);
            this.pictureEdit1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pictureEdit1.EditValue = global::DoAn_QuanLyShopThoiTrang.Properties.Resources.icon_logo;
            this.pictureEdit1.Location = new System.Drawing.Point(85, 104);
            this.pictureEdit1.Name = "pictureEdit1";
            this.pictureEdit1.Properties.Appearance.BackColor = System.Drawing.Color.White;
            this.pictureEdit1.Properties.Appearance.ForeColor = System.Drawing.Color.Black;
            this.pictureEdit1.Properties.Appearance.Options.UseBackColor = true;
            this.pictureEdit1.Properties.Appearance.Options.UseForeColor = true;
            this.pictureEdit1.Properties.ShowCameraMenuItem = DevExpress.XtraEditors.Controls.CameraMenuItemVisibility.Auto;
            this.tablePanel1.SetRow(this.pictureEdit1, 1);
            this.pictureEdit1.Size = new System.Drawing.Size(336, 302);
            this.pictureEdit1.TabIndex = 0;
            // 
            // lblWelcome
            // 
            this.lblWelcome.Appearance.Font = new System.Drawing.Font("Tahoma", 27.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblWelcome.Appearance.Options.UseFont = true;
            this.lblWelcome.Appearance.Options.UseTextOptions = true;
            this.lblWelcome.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.lblWelcome.Appearance.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.tablePanel1.SetColumn(this.lblWelcome, 1);
            this.tablePanel1.SetColumnSpan(this.lblWelcome, 5);
            this.lblWelcome.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblWelcome.Location = new System.Drawing.Point(85, 3);
            this.lblWelcome.Name = "lblWelcome";
            this.tablePanel1.SetRow(this.lblWelcome, 0);
            this.lblWelcome.Size = new System.Drawing.Size(794, 95);
            this.lblWelcome.TabIndex = 3;
            this.lblWelcome.Text = "Chào mừng";
            // 
            // ucHome
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.tablePanel1);
            this.Name = "ucHome";
            this.Size = new System.Drawing.Size(917, 528);
            ((System.ComponentModel.ISupportInitialize)(this.tablePanel1)).EndInit();
            this.tablePanel1.ResumeLayout(false);
            this.tablePanel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureEdit2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureEdit1.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.Utils.Layout.TablePanel tablePanel1;
        private DevExpress.XtraEditors.SimpleButton btnThongTinChiTiet;
        private DevExpress.XtraEditors.PictureEdit pictureEdit2;
        private DevExpress.XtraEditors.PictureEdit pictureEdit1;
        private DevExpress.XtraEditors.LabelControl lblWelcome;
    }
}
