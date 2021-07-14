using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL_DAL
{
    public class ChiTietHoaDon
    {
        public string MaHoaDon { get; set; }
        public string TenSanPham { get; set; }
        public string Size { get; set; }
        public string MauSac { get; set; }
        public int? SoLuong { get; set; }
        public double? DonGia { get; set; }
        public ChiTietHoaDon(string mahd,string tenSP,string size,string mauSac,int slMua,double? donGia)
        {
            this.MaHoaDon = mahd;
            this.TenSanPham = tenSP;
            this.Size = size;
            this.MauSac = mauSac;
            this.SoLuong = slMua;
            this.DonGia = donGia;
        }
    }
}
