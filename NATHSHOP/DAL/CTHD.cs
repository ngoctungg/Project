using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace NATHSHOP.Form
{
    class CTHD
    {
        private string MaHD;

        public int mkh;
        public int MKH
        {
            get { return mkh; }
            set { mkh = value; }
        }

        public string MAHD
        {
            get { return MaHD; }
            set { MaHD = value; }
        }
        private int MaSP;

        public int MASP
        {
            get { return MaSP; }
            set { MaSP = value; }
        }
        private string MaSize;

        public string MASIZE
        {
            get { return MaSize; }
            set { MaSize = value; }
        }
        private int SoLuong;

        public int SOLUONG
        {
            get { return SoLuong; }
            set { SoLuong = value; }
        }
        private double DonGia;

        public double DONGIA
        {
            get { return DonGia; }
            set { DonGia = value; }
        }
    }
}
