using System;
using System.Collections.Generic;
using System.Linq;

namespace BLL_DAL
{
    public class HoaDonBLL_DAL
    {
        dbShopThoiTrangDataContext dbContext = new dbShopThoiTrangDataContext();
        public IQueryable<ChiTietDonBanHang> loadCTDonBanHang(string maHD)
        {
            return dbContext.ChiTietDonBanHangs.Where(ct => ct.MaDonHang == maHD);
        }
        public IQueryable<HoaDonBanHang> loadDonBanHang(string maKH)
        {
            return dbContext.HoaDonBanHangs.Where(hd => hd.MaKhachHang == maKH && hd.TrangThai == false);
        }
        public IQueryable<HoaDonBanHang> getBillsSolded()
        {
            return dbContext.HoaDonBanHangs.Where(hd => hd.TrangThai == true);
        }
        public IQueryable<HoaDonBanHang> getBillsCreating()
        {
            return dbContext.HoaDonBanHangs.Where(hd => hd.TrangThai == false);
        }

        public HoaDonBanHang getSelectedHD(string maHD)
        {
            return dbContext.HoaDonBanHangs.FirstOrDefault(hd => hd.MaDonHang == maHD);
        }

        public bool InsertHoaDon(HoaDonBanHang hd)
        {
            try {
                HoaDonBanHang tmp = dbContext.HoaDonBanHangs.FirstOrDefault(h => h.MaDonHang == hd.MaDonHang);
                if (tmp == null)
                {
                    dbContext.HoaDonBanHangs.InsertOnSubmit(hd);
                    dbContext.SubmitChanges();
                    return true;
                }
                else {
                    return false;
                }
                
            }
            catch {
                return false;
            }
        }

        public HoaDonBanHang GetLastHoaDon()
        {
            return dbContext.HoaDonBanHangs.Select(hd=>hd).ToList().LastOrDefault();
        }
        public List<ChiTietHoaDon> load_CtHoaDon(string mahd)
        {
            List<ChiTietHoaDon> lst = new List<ChiTietHoaDon>();
            lst = dbContext.ChiTietDonBanHangs
                .Join(dbContext.SanPhams, cthd => cthd.MaSanPham, sp => sp.MaSanPham, (cthd, sp) => new { cthd, sp })
                .Where(ct => ct.cthd.MaDonHang == mahd)
                .Select(ct => new ChiTietHoaDon(
                    ct.cthd.MaDonHang,
                    ct.sp.TenSanPham,
                    ct.cthd.Size,
                    ct.cthd.MauSac,
                    (int)ct.cthd.SoLuongMua,
                    ct.cthd.DonGiaBan
                    )).ToList();
            return lst;
        }

        public bool InsertChiTietHoaDon(ChiTietDonBanHang chiTietDonBanHang)
        {
            ChiTietDonBanHang tmp = dbContext.ChiTietDonBanHangs.FirstOrDefault(ct => ct.MaDonHang == chiTietDonBanHang.MaDonHang && ct.MaSanPham == chiTietDonBanHang.MaSanPham);
            
            try {
                if (tmp == null)
                {
                    dbContext.ChiTietDonBanHangs.InsertOnSubmit(chiTietDonBanHang);
                    dbContext.SubmitChanges();
                    return true;
                }
                else
                {
                    tmp.SoLuongMua = tmp.SoLuongMua+ chiTietDonBanHang.SoLuongMua;
                    dbContext.SubmitChanges();
                    return true;
                }
            }
            catch {
                return false;
            }
        }
        public bool DeletChiTietHoaDon(string maHD,string maSP)
        {
            ChiTietDonBanHang tmp = dbContext.ChiTietDonBanHangs.FirstOrDefault(ct => ct.MaDonHang == maHD && ct.MaSanPham == maSP);
            try
            {
                if (tmp != null)
                {
                    dbContext.ChiTietDonBanHangs.DeleteOnSubmit(tmp);
                    dbContext.SubmitChanges();
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch
            {
                return false;
            }
        }
        public bool UpdateThanhTien_SoLuongTon(ChiTietDonBanHang ctDH,bool action)
        {
            try
            {
                if (action == true)
                {
                    HoaDonBanHang tmp = dbContext.HoaDonBanHangs.FirstOrDefault(h => h.MaDonHang == ctDH.MaDonHang);
                    SanPham spTmp = dbContext.SanPhams.FirstOrDefault(sp => sp.MaSanPham == ctDH.MaSanPham);
                    if (tmp != null & spTmp != null)
                    {
                        tmp.ThanhTien = tmp.ThanhTien + (ctDH.DonGiaBan * ctDH.SoLuongMua);
                        spTmp.SoLuongTon = spTmp.SoLuongTon - ctDH.SoLuongMua;
                        dbContext.SubmitChanges();
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                else {
                    ChiTietDonBanHang deletedChiTiet= dbContext.ChiTietDonBanHangs.FirstOrDefault(h => h.MaDonHang == ctDH.MaDonHang&&h.MaSanPham==ctDH.MaSanPham);
                    HoaDonBanHang tmp = dbContext.HoaDonBanHangs.FirstOrDefault(h => h.MaDonHang == ctDH.MaDonHang);
                    SanPham spTmp = dbContext.SanPhams.FirstOrDefault(sp => sp.MaSanPham == ctDH.MaSanPham);
                    if (tmp != null & spTmp != null)
                    {
                        tmp.ThanhTien = tmp.ThanhTien - (deletedChiTiet.DonGiaBan * deletedChiTiet.SoLuongMua);
                        spTmp.SoLuongTon = spTmp.SoLuongTon + deletedChiTiet.SoLuongMua;
                        dbContext.SubmitChanges();
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
            }
            catch(Exception e)
            {
                return false;
            }
        }
        public bool ThanhToan(string maHD,double ThanhTien,int KhuyenMai)
        {
            HoaDonBanHang hd = dbContext.HoaDonBanHangs.SingleOrDefault(h => h.MaDonHang == maHD);
            try {
                if (hd != null)
                {
                    hd.ThanhTien = ThanhTien;
                    hd.TrangThai = true;
                    hd.KhuyenMai = KhuyenMai;
                    hd.KhuyenMai = KhuyenMai;
                    dbContext.SubmitChanges();
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch {
                return false;
            }
        }

        public ChiTietDonBanHang GetChiTietDonBanHang(string MaDH,string MaSP)
        {
            return dbContext.ChiTietDonBanHangs.SingleOrDefault(ct => ct.MaDonHang == MaDH && ct.MaSanPham == MaSP);
        }
        public bool Update_SoLuongMua(string MaDH, string MaSP,int soLuong)
        {
            try {
                ChiTietDonBanHang ctbh= dbContext.ChiTietDonBanHangs.SingleOrDefault(ct => ct.MaDonHang == MaDH && ct.MaSanPham == MaSP);
                
                HoaDonBanHang hd= dbContext.HoaDonBanHangs.SingleOrDefault(h=>h.MaDonHang==MaDH);
                if (ctbh.SoLuongMua < soLuong)
                {
                    hd.ThanhTien = hd.ThanhTien + (ctbh.DonGiaBan * (soLuong - ctbh.SoLuongMua));
                }
                else if (ctbh.SoLuongMua > soLuong)
                {
                    hd.ThanhTien = hd.ThanhTien - (ctbh.DonGiaBan * (ctbh.SoLuongMua - soLuong));
                }
                ctbh.SoLuongMua = soLuong;
                dbContext.SubmitChanges();
                return true;
            }
            catch {
                return false;
            }
            
        }
    }

}