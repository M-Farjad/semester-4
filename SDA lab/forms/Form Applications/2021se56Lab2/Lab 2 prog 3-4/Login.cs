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
    public partial class Login : Form
    {
        public Login()
        {
            InitializeComponent();
        }

        private void Login_Load(object sender, EventArgs e)
        {

        }

        private void btnLoginL_Click(object sender, EventArgs e)
        {
            for(int i = 0; i <Class1.count; i++)
            {
                if (txtusrLogin.Text == (string)Class1.usernames[i] && txtpassLogin.Text == (string)Class1.passwords[i])
                {
                    lblAuthL.BackColor = Color.Green;
                    lblAuthL.Text = "Valid User";
                    break;
                }
                else
                {
                    lblAuthL.Text = "In-Valid User";
                    lblAuthL.BackColor = Color.Red;
                }
            }
            if(lblAuthL.Text=="Valid User")
            {
                home hme = new home();
                hme.Show();
            }
        }

        private void btnSignL_Click(object sender, EventArgs e)
        {
            SignUp signUp = new SignUp();
            signUp.Show();
        }
    }
}
