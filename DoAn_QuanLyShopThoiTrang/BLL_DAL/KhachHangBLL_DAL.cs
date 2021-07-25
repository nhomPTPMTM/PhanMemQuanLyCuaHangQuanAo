using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL_DAL
{
    public class KhachHangBLL_DAL
    {
        dbShopThoiTrangDataContext dbContext = new dbShopThoiTrangDataContext();
        public IQueryable<KhachHang> loadKhachHang()
        {
            return dbContext.KhachHangs.Select(kh => kh);
        }
        public KhachHang getLastKH()
        {
            return dbContext.KhachHangs.Select(kh=>kh).ToList().LastOrDefault();
        }
        public bool InsertKhachHang(KhachHang kh)
        {
            try
            {
                dbContext.KhachHangs.InsertOnSubmit(kh);
                dbContext.SubmitChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}
