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
    public partial class FrmLogin : DevExpress.XtraEditors.XtraForm
    {
        TaiKhoanNhanVienBLL_DAL tk = new TaiKhoanNhanVienBLL_DAL();
        public FrmLogin()
        {
            InitializeComponent();
        }

        private void hyperlinkLabelControl1_Click(object sender, EventArgs e)
        {
            FrmForget frm = new FrmForget();
            this.Hide();
            frm.Show();
        }

        private void FrmLogin_Load(object sender, EventArgs e)
        {
            this.CenterToParent();
            if(tk.FindTaiKhoan(DoAn_QuanLyShopThoiTrang.Properties.Settings.Default.Username, DoAn_QuanLyShopThoiTrang.Properties.Settings.Default.Password)!=null)
            { 
                txtName.Text = DoAn_QuanLyShopThoiTrang.Properties.Settings.Default.Username;
                txtPassword.Text = DoAn_QuanLyShopThoiTrang.Properties.Settings.Default.Password;
            }
            checkEdit1.Checked = true;
        }

        private void FrmLogin_FormClosed(object sender, FormClosedEventArgs e)
        {
            
        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            if (txtName.Text.Equals("") && txtPassword.Text.Equals(""))
            {
                MessageBox.Show("Name user or password cannot be null!", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (tk.FindTaiKhoan(txtName.Text, txtPassword.Text) != null)
            {
                if (tk.FindTaiKhoan(txtName.Text, txtPassword.Text).HoatDong != true)
                {
                    MessageBox.Show("Account is not longer active!", "NO ACTIVE", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                if (checkEdit1.Checked)
                {
                    DoAn_QuanLyShopThoiTrang.Properties.Settings.Default.Username = txtName.Text;
                    DoAn_QuanLyShopThoiTrang.Properties.Settings.Default.Password = txtPassword.Text;
                }
                else
                {
                    DoAn_QuanLyShopThoiTrang.Properties.Settings.Default.Username = null;
                    DoAn_QuanLyShopThoiTrang.Properties.Settings.Default.Password = null;
                }
                Program.MaNV = tk.FindTaiKhoan(txtName.Text, txtPassword.Text).MaNhanVien;
                Properties.Settings.Default.Save();
                Program.frmTN = new FrmTN();
                Program.frmTN.Show();
                this.Hide();
            }
            else
            {
                MessageBox.Show("Account cannot find!", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            
        }
    }
}