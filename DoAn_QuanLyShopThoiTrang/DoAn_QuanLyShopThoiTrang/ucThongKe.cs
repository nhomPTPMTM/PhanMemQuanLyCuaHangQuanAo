﻿using DevExpress.XtraEditors;
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
using System.Diagnostics;
using DevExpress.XtraExport;
using DevExpress.XtraSpreadsheet;
using System.IO;
using DevExpress.ClipboardSource.SpreadsheetML;
using DevExpress.Spreadsheet;
using Table = DevExpress.Spreadsheet.Table;

namespace DoAn_QuanLyShopThoiTrang
{
    public partial class ucThongKe : DevExpress.XtraEditors.XtraUserControl
    {
        ThongKeBLL_DAL thongKeBLL_DAL = new ThongKeBLL_DAL();
        DevExpress.Spreadsheet.Worksheet sheet;
        public ucThongKe()
        {
            InitializeComponent();
            // This line of code is generated by Data Source Configuration Wizard
            //chiTietDonBanHangsBindingSource.DataSource = new BLL_DAL.dbShopThoiTrangDataContext().ChiTietDonBanHangs;
            ThongKebindingSource.DataSource= thongKeBLL_DAL.getThongKe();
            gridControl1.DataSource = ThongKebindingSource.DataSource;
        }

        private void dashboardViewer1_Load(object sender, EventArgs e)
        {

        }

        private void dateEdit1_EditValueChanged(object sender, EventArgs e)
        {
            if (dateEdit1.EditValue != null)
            {
                ThongKebindingSource.DataSource= thongKeBLL_DAL.getThongKe_TheoThang(DateTime.Parse(dateEdit1.EditValue.ToString()));
                gridControl1.DataSource = ThongKebindingSource.DataSource;
            }
        }

        private void btnExportToExcel_Click(object sender, EventArgs e)
        {
            SaveFileDialog saveFileDialog = new SaveFileDialog();
            saveFileDialog.Title = "Export Excel";
            saveFileDialog.Filter = "Excel File(*.xlsx)|*.xlsx";
            DialogResult dialogResult = saveFileDialog.ShowDialog(this);
            if (dialogResult == DialogResult.OK)
            {
                SpreadsheetControl spreadsheetControl1 = new SpreadsheetControl();
                IWorkbook workbook = spreadsheetControl1.Document;
                workbook.LoadDocument("templateThongKe.xlsx", DocumentFormat.Xlsx);
                sheet = workbook.Worksheets[0];
                workbook.BeginUpdate();
                try
                {
                    setNgayLap();
                    sheet.Rows.Insert(5, gridView1.RowCount);
                    
                    ExternalDataSourceOptions options = new ExternalDataSourceOptions() { ImportHeaders = true };
                    
                    // Bắt đầu ghi từ column thứ 7
                    Table table = sheet.Tables.Add(getData(), 6, 0, options);
                    TableStyleCollection tableStyles = workbook.TableStyles;
                    TableStyle tableStyle = tableStyles[BuiltInTableStyleId.TableStyleMedium2]; // Đổi style table ở đây

                    // Apply the table style to the existing table.
                    table.Style = tableStyle;

                    table.Columns[0].Name = "Mã sản phẩm";
                    table.Columns[1].Name = "Tên sản phểm";
                    table.Columns[2].Name = "Số lượng bán";
                    table.Columns[3].Name = "Đơn giá";
                    table.Columns[4].Name = "Tổng doanh thu";
                    table.Columns[4].Formula = "=[Số lượng bán] * [Đơn giá]";

                    table.Columns[4].TotalRowFunction = TotalRowFunction.Sum;
                    table.ShowTotals = true;
                    table.Columns[3].TotalRowLabel = "TỔNG CỘNG";
                    table.Columns[0].TotalRowLabel = "";
                    table.Columns[4].Range.NumberFormat = " #,##0_ [$VND]";
                    table.Columns[4].Total.Font.Color = Color.Red;
                    table.TotalRowRange.Font.Size = 14;

                }
                finally
                {
                    workbook.EndUpdate();
                }

                spreadsheetControl1.SaveDocument(saveFileDialog.FileName, DocumentFormat.Xlsx);
                Process.Start(saveFileDialog.FileName);
            }
        }
        private void setNgayLap()
        {
            sheet.Cells["D2"].Value = "Ngày " + DateTime.Now.Day + " tháng " + DateTime.Now.Month + " năm " + DateTime.Now.Year;
            if (dateEdit1.Text == null)
            {
                sheet.Cells["A5"].Value = "Tháng " + DateTime.Parse(dateEdit1.EditValue.ToString()).ToString("MM/yyyy");
            }
            else
            {
                sheet.Cells["A5"].Value = "Tháng " + DateTime.Now.ToString("MM/yyyy");
                sheet.Cells["D9"].Value = "Ngày " + DateTime.Now.Day + " tháng " + DateTime.Now.Month + " năm " + DateTime.Now.Year;
            }
        }
        private List<ThongKe> getData()
        {
            List< ThongKe > rowHandles = new List<ThongKe> ();
            for (int i = 0; i < gridView1.RowCount; i++)
            {
                rowHandles.Add((ThongKe)gridView1.GetRow(i));
            }
            return rowHandles;
        }
    }
}
