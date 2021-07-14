using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL_DAL
{
    public class SanPhamBLL
    {
        dbShopThoiTrangDataContext dbContext = new dbShopThoiTrangDataContext();
        public IQueryable<SanPham> loadSanPham()
        {
            return dbContext.SanPhams.Select(sp => sp);
        }
        public IQueryable<SanPham> loadSanPham_ForLoai(string maLoai)
        {
            return dbContext.SanPhams.Where(sp => sp.MaLoaiSanPham == maLoai);
        }
        public IQueryable<SanPham> loadSanPham_ForNhaCungCap(string maNCC)
        {
            return dbContext.SanPhams.Where(sp => sp.MaNhaCungCap==maNCC);
        }
        public SanPham detailSanpham(string maSP)
        {
            return dbContext.SanPhams.FirstOrDefault(sp => sp.MaSanPham == maSP);
        }
        public bool InsertSanpham(SanPham sp)
        {
            try {
                SanPham tmp = dbContext.SanPhams.SingleOrDefault(s=>s.MaSanPham==sp.MaSanPham);
                if (tmp == null)
                {
                    dbContext.SanPhams.InsertOnSubmit(sp);
                    dbContext.SubmitChanges();
                    return true;
                }
                else { return false; }
            }
            catch(Exception e) {
                throw new Exception(e.Message);
                return false;
            }
        }
        public bool DeleteSanpham(string maSP)
        {
            try
            {
                SanPham tmp = dbContext.SanPhams.SingleOrDefault(s => s.MaSanPham == maSP);
                if (tmp != null)
                {
                    dbContext.SanPhams.DeleteOnSubmit(tmp);
                    dbContext.SubmitChanges();
                    return true;
                }
                else { return false; }
            }
            catch
            {
                return false;
            }
        }
        public bool UpdateSanpham(SanPham sp)
        {
            try
            {
                SanPham tmp = dbContext.SanPhams.SingleOrDefault(s => s.MaSanPham == sp.MaSanPham);
                if (tmp != null)
                {
                    tmp.TenSanPham =sp.TenSanPham;
                    tmp.DonGia = sp.DonGia;
                    tmp.SoLuongTon = sp.SoLuongTon;
                    tmp.TrangThai = sp.TrangThai;
                    tmp.MoTa = sp.MoTa;
                    tmp.Size = sp.Size;
                    tmp.MaLoaiSanPham = sp.MaLoaiSanPham;
                    tmp.MaNhaCungCap = sp.MaNhaCungCap;

                    dbContext.SubmitChanges();
                    return true;
                }
                else { return false; }
            }
            catch
            {
                return false;
            }
        }
    }
}
