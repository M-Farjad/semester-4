using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Lab_2
{
    public partial class Login_Form : Form
    {
        public Login_Form()
        {
            InitializeComponent();
        }

        private void Login_Form_Load(object sender, EventArgs e)
        {

        }

        private void lblAuth_Click(object sender, EventArgs e)
        {

        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            string[] usernames = new string[] { "fahad", "farjad", "salman", "numan", "zain", "hammad", "umer", "labeeb", "haseeb", "wali" };
            string[] passwords = new string[] { "123", "234", "345", "456", "567", "678", "789", "890", "901", "012" };
            for(int i =0;i<usernames.Length;i++)
            {
                if (txtUserName.Text==usernames[i] && txtPassword.Text==passwords[i]) { 
                    lblAuth.Text = "Valid User";
                    lblAuth.BackColor = Color.Green;
                    break;
                }
                else {
                    lblAuth.Text = "In-Valid User";
                    lblAuth.BackColor = Color.Red;
                    break;
                }
            }

        }
    }
}
