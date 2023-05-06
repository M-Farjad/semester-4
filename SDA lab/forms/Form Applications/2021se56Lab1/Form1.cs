namespace Lab_1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            //MessageBox.Show("Hello World");       
            //textBox1.Text= "Hello World";             //Program 3

            //textBox1.BackColor= Color.Red;            //Program 4

            //string name = "Pakistan";                 //Program 5                    
            //if(textBox1.Text == name)
            //{ MessageBox.Show("Welcome To Pakistan"); }

            //if (textBox1.Text == "Pakistan")          //Program 6
            //{ MessageBox.Show("Welcome to Pakistan"); }
            //else if(textBox1.Text == "India")
            //{ MessageBox.Show("Good Bye"); }

            string username1 = "pakistan",password1 = "123";
            string username2 = "cse",password2 = "17";
            if(textBox2.Text == username1 && textBox1.Text == password1)
            {
                label3.BackColor= Color.Green;
                label3.Text = "Valid User";
            }
            else if (textBox2.Text == username2 && textBox1.Text == password2)
            {
                label3.BackColor = Color.Green;
                label3.Text = "Valid User";
            }
            else
            {
                label3.BackColor= Color.Red;
                label3.Text= "In-Valid User";
            }
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }
    }
}