using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WinFormsApp1
{
    public partial class Login_Form : Form
    {
        public Login_Form()
        {
            InitializeComponent();
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            Student std1 = DataStore.data.Find(obj => obj.UserName == txtUser.Text && obj.PassWord == txtPass.Text); // predicate
            pictureBox1.Load(std1.imagePath);
            pictureBox1.SizeMode = PictureBoxSizeMode.StretchImage;
        }
    }
}
