﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace BLL_DAL
{
    public class ThongKeBLL_DAL
    {
        dbShopThoiTrangDataContext dbContext = new dbShopThoiTrangDataContext();
        public List<ThongKe> getThongKe()
        {
            List<ThongKe> lst = new List<ThongKe>();
            var sumSoLuong = dbContext.ChiTietDonBanHangs.GroupBy(ct => ct.MaSanPham).Select(ct => ct).Select(a => new {
                        Name =a.Key,
                        Amount=a.Sum(s => s.SoLuongMua)
            });
            var lstSanPham = dbContext.SanPhams
                //.Join(dbContext.SanPhams, sp => sp.Name, cthd => cthd.MaSanPham,  (cthd, sp) => new { cthd, sp })
                .Select(ct => new ThongKe(
                    ct.MaSanPham,
                    ct.TenSanPham,
                    0,
                    ct.DonGia
                    ));
            var query = from sp in dbContext.SanPhams
                        join i in sumSoLuong on sp.MaSanPham equals i.Name
                            into joinGroup
                        from gr in joinGroup.DefaultIfEmpty()
                        select new ThongKe(sp.MaSanPham,
                        sp.TenSanPham,
                        (gr.Amount == null ? 0 : gr.Amount),
                        sp.DonGia);
            lst = query.ToList();
            return lst;
        }
    }
}