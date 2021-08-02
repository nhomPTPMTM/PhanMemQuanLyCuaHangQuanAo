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
        public bool InsertPhanCong(BangPhanCong pc)
        {
            try
            {
                if (dbContext.BangPhanCongs.SingleOrDefault(p => p.MaNhanVien == pc.MaNhanVien && p.MaPhanQuyen == pc.MaNhanVien) != null)
                {
                    return false;
                }
                dbContext.BangPhanCongs.InsertOnSubmit(pc);
                dbContext.SubmitChanges();
                return true;
            }
            catch {
                return false;
            }
        }
        public bool Remove_PhanCong(string maPC)
        {
            try
            {
               BangPhanCong pc=dbContext.BangPhanCongs.SingleOrDefault(p => p.MaPhanCong==maPC);
               if (pc!=null)
               {
                   dbContext.BangPhanCongs.DeleteOnSubmit(pc);
                   dbContext.SubmitChanges();
                   return true;
               }
               else {
                   return false;
               }
            }
            catch
            {
                return false;
            }
        }
        public BangPhanCong getLastPhanCong()
        {
            return dbContext.BangPhanCongs.ToList().LastOrDefault();
        }
    }
}
