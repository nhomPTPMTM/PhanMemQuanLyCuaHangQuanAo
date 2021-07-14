using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL_DAL
{
    public class TaiKhoanNhanVienBLL_DAL
    {
        dbShopThoiTrangDataContext db = new dbShopThoiTrangDataContext();
        public TaiKhoanNhanVien FindTaiKhoan(string tenTaiKhoan, string matKhau)
        {
            return db.TaiKhoanNhanViens.FirstOrDefault(tk => tk.TenTaiKhoan == tenTaiKhoan && tk.MatKhau == matKhau);
        }
        public TaiKhoanNhanVien FindTaiKhoan_ByUsername_Phone_Email(string tenTaiKhoan, string phone, string email)
        {
            return db.TaiKhoanNhanViens.FirstOrDefault(tk => tk.TenTaiKhoan == tenTaiKhoan && tk.NhanVien.Email == email && tk.NhanVien.SoDienThoai == phone);
        }
    }
}
