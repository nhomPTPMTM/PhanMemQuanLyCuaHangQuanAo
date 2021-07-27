using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL_DAL
{
    public class ThongKe
    {
        public string MaSanPham { get; set; }
        public string TenSanPham { get; set; }
        public int? SoLuongBan { get; set; }
        public double? DonGiaBan { get; set; }
        public double? TongDoanhThu { get; set; }
        public ThongKe(string maSP,string ten,int? soLuongBan,double? donGiaBan)
        {
            MaSanPham = maSP;
            TenSanPham = ten;
            SoLuongBan = soLuongBan;
            DonGiaBan = donGiaBan;
            TongDoanhThu = soLuongBan * donGiaBan;
        }
    }
}
