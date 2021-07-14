using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL_DAL
{
    public class LoaiSanPhamBLL_DAL
    {
        dbShopThoiTrangDataContext db = new dbShopThoiTrangDataContext();
        public IQueryable<LoaiSanPham> load_DSLoai()
        {
            return db.LoaiSanPhams.Select(loai => loai);
        }
        public string getTenLoai(string maLoai)
        {
            return db.LoaiSanPhams.FirstOrDefault(loai=>loai.MaLoaiSanPham.Equals(maLoai)).TenLoaiSanPham;
        }
        public string load_MaDanhMuc(string maloai)
        {
            return db.LoaiSanPhams.Where(loai => loai.MaLoaiSanPham.Equals(maloai)).FirstOrDefault().MaDanhMuc;
        }
    }
}
