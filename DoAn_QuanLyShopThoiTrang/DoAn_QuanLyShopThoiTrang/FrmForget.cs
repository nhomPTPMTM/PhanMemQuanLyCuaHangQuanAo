using BLL_DAL;
using DevExpress.XtraEditors;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DoAn_QuanLyShopThoiTrang
{
    public partial class FrmForget : DevExpress.XtraEditors.XtraForm
    {
        TaiKhoanNhanVienBLL_DAL taiKhoanNhanVien = new TaiKhoanNhanVienBLL_DAL();
        public FrmForget()
        {
            InitializeComponent();
        }

        private void btnAccept_Click(object sender, EventArgs e)
        {

        }

        private void labelControl5_Click(object sender, EventArgs e)
        {

        }

        private void linkSignIn_Click(object sender, EventArgs e)
        {
            this.Close();
            Program.frmLogin.Show();
        }

        private void FrmForget_FormClosed(object sender, FormClosedEventArgs e)
        {
            
        }

        private void FrmForget_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (this.CloseBox)
            {
                Program.frmLogin.Show();
            }
        }

        private void lbPass_Click(object sender, EventArgs e)
        {

        }

        private void btnAccept_Click_1(object sender, EventArgs e)
        {
            TaiKhoanNhanVien tk = taiKhoanNhanVien.FindTaiKhoan_ByUsername_Phone_Email(txtName.Text, txtPhone.Text, txtEmail.Text);
            if (tk != null)
            {
                lbPass.Text = "Your password: " + tk.MatKhau;
                lbPass.Visible = true;
            }
            else
            {
                MessageBox.Show("Tài khoản không tồn tại hoặc sai thông tin xác thực", "Lỗi");
            }
        }
    }
}