﻿
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(ucHome));
            this.tablePanel1 = new DevExpress.Utils.Layout.TablePanel();
            this.btnThongTinChiTiet = new DevExpress.XtraEditors.SimpleButton();
            this.pictureEdit2 = new DevExpress.XtraEditors.PictureEdit();
            this.pictureEdit1 = new DevExpress.XtraEditors.PictureEdit();
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
            this.tablePanel1.Controls.Add(this.btnThongTinChiTiet);
            this.tablePanel1.Controls.Add(this.pictureEdit2);
            this.tablePanel1.Controls.Add(this.pictureEdit1);
            this.tablePanel1.Location = new System.Drawing.Point(18, 3);
            this.tablePanel1.Name = "tablePanel1";
            this.tablePanel1.Rows.AddRange(new DevExpress.Utils.Layout.TablePanelRow[] {
            new DevExpress.Utils.Layout.TablePanelRow(DevExpress.Utils.Layout.TablePanelEntityStyle.Absolute, 101F),
            new DevExpress.Utils.Layout.TablePanelRow(DevExpress.Utils.Layout.TablePanelEntityStyle.Absolute, 300F),
            new DevExpress.Utils.Layout.TablePanelRow(DevExpress.Utils.Layout.TablePanelEntityStyle.Absolute, 45F),
            new DevExpress.Utils.Layout.TablePanelRow(DevExpress.Utils.Layout.TablePanelEntityStyle.Absolute, 26F)});
            this.tablePanel1.Size = new System.Drawing.Size(884, 485);
            this.tablePanel1.TabIndex = 0;
            // 
            // btnThongTinChiTiet
            // 
            this.tablePanel1.SetColumn(this.btnThongTinChiTiet, 2);
            this.tablePanel1.SetColumnSpan(this.btnThongTinChiTiet, 3);
            this.btnThongTinChiTiet.Dock = System.Windows.Forms.DockStyle.Fill;
            this.btnThongTinChiTiet.Location = new System.Drawing.Point(342, 404);
            this.btnThongTinChiTiet.Name = "btnThongTinChiTiet";
            this.tablePanel1.SetRow(this.btnThongTinChiTiet, 2);
            this.btnThongTinChiTiet.Size = new System.Drawing.Size(145, 39);
            this.btnThongTinChiTiet.TabIndex = 2;
            this.btnThongTinChiTiet.Text = "Xem thông tin chi tiết";
            this.btnThongTinChiTiet.Click += new System.EventHandler(this.btnThongTinChiTiet_Click);
            // 
            // pictureEdit2
            // 
            this.tablePanel1.SetColumn(this.pictureEdit2, 4);
            this.tablePanel1.SetColumnSpan(this.pictureEdit2, 2);
            this.pictureEdit2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pictureEdit2.EditValue = global::DoAn_QuanLyShopThoiTrang.Properties.Resources.event2;
            this.pictureEdit2.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this.pictureEdit2.Location = new System.Drawing.Point(445, 104);
            this.pictureEdit2.Name = "pictureEdit2";
            this.pictureEdit2.Properties.ShowCameraMenuItem = DevExpress.XtraEditors.Controls.CameraMenuItemVisibility.Auto;
            this.pictureEdit2.Properties.SizeMode = DevExpress.XtraEditors.Controls.PictureSizeMode.Stretch;
            this.tablePanel1.SetRow(this.pictureEdit2, 1);
            this.pictureEdit2.Size = new System.Drawing.Size(403, 294);
            this.pictureEdit2.TabIndex = 1;
            // 
            // pictureEdit1
            // 
            this.tablePanel1.SetColumn(this.pictureEdit1, 1);
            this.tablePanel1.SetColumnSpan(this.pictureEdit1, 2);
            this.pictureEdit1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pictureEdit1.EditValue = ((object)(resources.GetObject("pictureEdit1.EditValue")));
            this.pictureEdit1.Location = new System.Drawing.Point(82, 104);
            this.pictureEdit1.Name = "pictureEdit1";
            this.pictureEdit1.Properties.Appearance.BackColor = System.Drawing.Color.Black;
            this.pictureEdit1.Properties.Appearance.Options.UseBackColor = true;
            this.pictureEdit1.Properties.ShowCameraMenuItem = DevExpress.XtraEditors.Controls.CameraMenuItemVisibility.Auto;
            this.tablePanel1.SetRow(this.pictureEdit1, 1);
            this.pictureEdit1.Size = new System.Drawing.Size(325, 294);
            this.pictureEdit1.TabIndex = 0;
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
            ((System.ComponentModel.ISupportInitialize)(this.pictureEdit2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureEdit1.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.Utils.Layout.TablePanel tablePanel1;
        private DevExpress.XtraEditors.SimpleButton btnThongTinChiTiet;
        private DevExpress.XtraEditors.PictureEdit pictureEdit2;
        private DevExpress.XtraEditors.PictureEdit pictureEdit1;
    }
}