using DevExpress.XtraEditors;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace GUI
{
    public class SetupControls
    {
        public SetupControls()
        {

        }
        public void setupPicture(PictureEdit pictureBox, string urlFile)
        {
            //Set Image
            if (File.Exists(urlFile))
            {
                pictureBox.Image = Image.FromFile(urlFile);
                pictureBox.Properties.SizeMode = DevExpress.XtraEditors.Controls.PictureSizeMode.Stretch;
            }
            else
            {
                pictureBox.Image = Image.FromFile("E:\\KBS\\PTPN va UDTM\\image\\NoImage.jpg");
                pictureBox.Properties.SizeMode = DevExpress.XtraEditors.Controls.PictureSizeMode.Stretch;
            }
        }
        public void setupLabel(LabelControl labelControl, int topPos, int leftPos, string text)
        {
            //Setup label
            labelControl.Location = new System.Drawing.Point(leftPos, topPos);
            labelControl.AutoSizeMode = LabelAutoSizeMode.Vertical;
            labelControl.Size = new System.Drawing.Size(180, 38);
            labelControl.Text = text;
        }
        public void setupButton(SimpleButton simpleButton, int topPos, int leftPos, string name, string text, string tag)
        {
            //Setup button
            simpleButton.Location = new System.Drawing.Point(leftPos, topPos);
            simpleButton.Name = "Btn" + name;
            simpleButton.Size = new System.Drawing.Size(150, 50);
            simpleButton.Text = text;
            simpleButton.Tag = tag;
        }
    }
}
