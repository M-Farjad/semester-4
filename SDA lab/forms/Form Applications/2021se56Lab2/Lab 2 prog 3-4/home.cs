using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Lab_2_prog_2
{
    public partial class home : Form
    {
        public home()
        {
            InitializeComponent();
        }

        private void home_Load(object sender, EventArgs e)
        {

        }
        int str_index;
        private void button1_Click(object sender, EventArgs e)
        {
            for(int k=0; k<Class1.count; k++) {
                if (txtUserName.Text == (string)Class1.usernames[k])
                {
                    lblValidation.Text = "Enter Your New Password";
                    lblValidation.Visible = true;
                    str_index = k;
                }
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            int p;
            p = str_index;
            Class1.passwords[p] = txtPassword.Text;
        }
    }
}
