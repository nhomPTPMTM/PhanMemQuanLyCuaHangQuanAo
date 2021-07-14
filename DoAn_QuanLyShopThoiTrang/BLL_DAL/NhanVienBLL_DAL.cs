using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL_DAL
{
    public class NhanVienBLL_DAL
    {
        dbShopThoiTrangDataContext dbContext = new dbShopThoiTrangDataContext();
        public IQueryable<NhanVien> loadNhanVien()
        {
            return dbContext.NhanViens.Select(nv=>nv);
        }
        public NhanVien detailNhanVien(string maNV)
        {
            return dbContext.NhanViens.FirstOrDefault(nv=>nv.MaNhanVien == maNV);
        }
        public List<ChiTietPhanQuyen> GetDMManHinhs(string maNV)
        {
            List<ChiTietPhanQuyen> lst= dbContext.ChiTietPhanQuyens
                .Join(dbContext.BangPhanCongs, ctpq => ctpq.MaPhanQuyen, pc => pc.MaPhanQuyen, (ctpq,pc) => new { ctpq, pc })
                .Where(amh => amh.pc.MaNhanVien == maNV)
                .Select(amh => amh.ctpq).ToList(); ;
            return lst;
        }
    }
}
