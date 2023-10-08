using ShopConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StarPhoneWebsite.Models.BUS
{
    public class MobileStoreBUS
    {
        public static IEnumerable<SanPham> DanhSach()
        {
            var db = new ShopConnectionDB();
            return db.Query<SanPham>("select * from SanPham where TinhTrang = 0");
        }
        public static SanPham ChiTiet(String ct)
        {
            var db = new ShopConnectionDB();
            return db.SingleOrDefault<SanPham>("select * from SanPham where TinhTrang = @0",ct);
        }
    }
}