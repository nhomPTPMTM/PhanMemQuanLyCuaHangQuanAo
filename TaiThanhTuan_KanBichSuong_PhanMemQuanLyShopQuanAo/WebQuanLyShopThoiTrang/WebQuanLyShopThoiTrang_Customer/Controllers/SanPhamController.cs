using PagedList;
using System;
using System.Collections.Generic;
using System.Data.Linq;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebQuanLyShopThoiTrang_Customer.Models;

namespace WebQuanLyShopThoiTrang_Customer.Controllers
{
    public class SanPhamController : Controller
    {

        // GET: SanPham
        dbQLShopQuanAoDataContext db = new dbQLShopQuanAoDataContext();
        public ActionResult GETAllLoaiSP(int? i)
        {
            //var loaiSPs = db.LoaiSanPhams.ToList();
            //return View(loaiSPs);
            int pageSize = 6;
            int pageIndex = 1;
            pageIndex = i.HasValue ? Convert.ToInt32(i) : 1;
            ViewBag.CurrentSort = "";
            ViewBag.DeptId = new SelectList(db.LoaiSanPhams, "MaLoaiSanPham", "TenLoaiSanPham");
            return View(db.LoaiSanPhams.ToList().ToPagedList(i ?? pageIndex, pageSize));
        }


        public ActionResult SanPhamPartial()
        {
            var ListSP = db.SanPhams.OrderBy(sanPham => sanPham.MaLoaiSanPham).ToList();
            return View(ListSP);
        }

        public ActionResult SanPhamPartial_TheoDM(string maLSP, int? i)
        {
            int pageSize = 9;
            int pageIndex = 1;
            pageIndex = i.HasValue ? Convert.ToInt32(i) : 1;
            ViewBag.CurrentSort = "";
            ViewBag.DeptId = new SelectList(db.SanPhams, "MaSanPham", "TenSanPham");

            var listSP = db.SanPhams.Where(sanPham => sanPham.MaLoaiSanPham.Equals(maLSP)).ToList();
            //if (maLSP == null)
            //{
            //    listSP = db.SanPhams.ToList();
            //    ViewBag.TenDM = "TỔNG HỢP";
            //    List<string> listMaDM = new List<string>();
            //    //Set anh chinh of San Pham
            //    foreach (SanPham sp in listSP)
            //    {
            //        if (ViewBag.MaDM == null)
            //        {
            //            var loaiSP = db.LoaiSanPhams.FirstOrDefault(s => s.MaLoaiSanPham == sp.MaLoaiSanPham);
            //            ViewBag.MaDM = loaiSP.MaDanhMuc;
            //        }
            //        sp._AnhChinh = sp.DanhMucHinhs.ToList().First().TenHinh;
            //    }
            //    return View(listSP.ToPagedList(i ?? pageIndex, pageSize));
            //}

            if (listSP != null && listSP.Count > 0)
            {
                Session["MaLoaiSanPham"] = maLSP;
                var loaiSP = db.LoaiSanPhams.FirstOrDefault(s => s.MaLoaiSanPham == maLSP);
                ViewBag.TenDM = loaiSP.TenLoaiSanPham;
                ViewBag.MaDM = loaiSP.MaDanhMuc;
                //Set anh chinh of San Pham
                foreach (SanPham sp in listSP)
                {
                    sp._AnhChinh = sp.DanhMucHinhs.ToList().First().TenHinh;
                }
            }
            else
            {
                var ma = Session["MaLoaiSanPham"].ToString();
                listSP = db.SanPhams.Where(sanPham => sanPham.MaLoaiSanPham.Equals(ma)).ToList();
                var loaiSP = db.LoaiSanPhams.FirstOrDefault(s => s.MaLoaiSanPham == ma);
                ViewBag.TenDM = loaiSP.TenLoaiSanPham;
                ViewBag.MaDM = loaiSP.MaDanhMuc;
                //Set anh chinh of San Pham
                foreach (SanPham sp in listSP)
                {
                    sp._AnhChinh = sp.DanhMucHinhs.ToList().First().TenHinh;
                }
            }
            return View(listSP.ToPagedList(i ?? pageIndex, pageSize));
        }

        [HttpGet()]
        public ActionResult Search(string search, int? i)
        {
            int pageSize = 9;
            int pageIndex = 1;
            pageIndex = i.HasValue ? Convert.ToInt32(i) : 1;
            ViewBag.CurrentSort = search;
            ViewBag.DeptId = new SelectList(db.SanPhams, "MaSanPham", "TenSanPham");
            List<SanPham> listSP = db.SanPhams.Where(x => x.TenSanPham.Contains(search) || search == null).ToList();
            listSP.ForEach(sp => sp._AnhChinh = db.SanPhams.FirstOrDefault(s => s.MaSanPham.Equals(sp.MaSanPham)).DanhMucHinhs.First().TenHinh);
            //listSP.ForEach(sp => sp._MaDanhMuc = db.SanPhams.FirstOrDefault(s => s.MaLoaiSanPham.Equals(sp.MaLoaiSanPham))._MaDanhMuc);
            //listSP.Fr(sp => db.SanPhams.FirstOrDefault(s => s.MaLoaiSanPham == sp.MaLoaiSanPham) != null).ToList();
            foreach(LoaiSanPham lsp in db.LoaiSanPhams.ToList())
            {
                for(var j = 0;j<listSP.Count;j++)
                if (listSP[j].MaLoaiSanPham.Equals(lsp.MaLoaiSanPham))
                    listSP[j]._MaDanhMuc = lsp.MaDanhMuc;
            }
            return View(listSP.ToPagedList(i ?? pageIndex, pageSize));
        }

        public ActionResult SanPhamPartial_FilterSearch(string search, int? i)
        {

            return View();
        }


        public ActionResult XemChiTiet(string maSP)
        {
            SanPham sanPham = db.SanPhams.Single(s => s.MaSanPham == maSP);
            if (sanPham == null)
            {
                return HttpNotFound();
            }
            return View(sanPham);
        }
    }
}