namespace Lab_2_prog_2
{
    public partial class SignUp : Form
    {
        public SignUp()
        {
            InitializeComponent();
        }

        private void btnSignupS_Click(object sender, EventArgs e)
        {
            Class1.usernames.Add(txtusrSign.Text);
            Class1.passwords.Add(txtpassSign.Text);
            MessageBox.Show("Sign Up Successful");
            Class1.count++;

        }

        private void btnLoginS_Click(object sender, EventArgs e)
        {
            Login login= new Login();
            login.Show();
        }

    }
}