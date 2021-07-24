using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebQuanLyShopThoiTrang_Customer.Models;

namespace WebQuanLyShopThoiTrang_Customer.Controllers
{
    public class DanhMucSPController : Controller
    {
        // GET: DanhMuc
        dbQLShopQuanAoDataContext db = new dbQLShopQuanAoDataContext();
        public ActionResult DanhMucSPPartial()
        {
            var listChuDe = db.LoaiSanPhams.OrderBy(cd => cd.TenLoaiSanPham).ToList();
            return View(listChuDe);
        }

        public ActionResult GETAllLoaiSP(int? i)
        {
            //var loaiSPs = db.LoaiSanPhams.ToList();
            //return View(loaiSPs);
            int pageSize = 6;
            int pageIndex = 1;
            pageIndex = i.HasValue ? Convert.ToInt32(i) : 1;
            ViewBag.CurrentSort = "";
            ViewBag.DeptId = new SelectList(db.LoaiSanPhams, "MaLoaiSanPham", "TenLoaiSanPham");
            List<LoaiSanPham> loaiSP = new List<LoaiSanPham>()
            {
                new LoaiSanPham()
                {
                    TenLoaiSanPham = "Tổng hợp",
                    HinhAnhWeb = "All.jpg"
                }
            };
            loaiSP.AddRange(db.LoaiSanPhams.ToList());
            return View(loaiSP.ToPagedList(i ?? pageIndex, pageSize));
        }

        public ActionResult DanhMucSPPartial_TungLoai()
        {
            var listChuDe = db.LoaiSanPhams.OrderBy(dmsp => dmsp.TenLoaiSanPham).ToList();
            return View(listChuDe);
        }
        public ActionResult DanhMucSPTheoTen(string maLoaiSP)
        {
            var ListSP = db.SanPhams.Where(s => s.MaLoaiSanPham == maLoaiSP).OrderBy(s => s.DonGia).ToList();
            if (ListSP == null)
                return HttpNotFound();
            var loaiSP = db.LoaiSanPhams.FirstOrDefault(s => s.MaLoaiSanPham == maLoaiSP);
            ViewBag.TenDM = loaiSP.TenLoaiSanPham;
            ViewBag.MaDM = loaiSP.MaDanhMuc;
            return View(ListSP);
        }
    }
}