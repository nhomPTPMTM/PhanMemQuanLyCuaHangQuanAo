using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DoAn_QuanLyShopThoiTrang
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        /// 
        public static FrmLogin frmLogin = null;
        public static string linkURL_SanPham = "E:\\KBS\\PTPN va UDTM\\DoAn_QuanLyShopThoiTrang\\Image\\";
        public static string linkURL_LoaiSP = "E:\\KBS\\PTPN va UDTM\\DoAn_QuanLyShopThoiTrang\\Icon\\";
        public static string linkURL_KhachHang = "E:\\GitHub\\PhanMemQuanLyCuaHangQuanAo\\DoAn_QuanLyShopThoiTrang\\Image\\KhachHang";
        public static FrmTN frmTN = null;
        public static string MaKH="";
        public static string MaHD = "";
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            frmLogin = new FrmLogin();
            Application.Run(frmLogin);
        }
    }
}
