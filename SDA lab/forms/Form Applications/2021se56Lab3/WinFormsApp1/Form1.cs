namespace WinFormsApp1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        string fPath;
        //byte[] binaryphoto;
        System.Drawing.Image fs; // Return type is Image
        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void rdbtnFemale_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void btnSignUp_Click(object sender, EventArgs e)
        {
            String extension = System.IO.Path.GetExtension(fPath);      //This method obtains the extension of path by searching path for a period ("."), starting from the last character in the read-only span and continuing toward its first character. If a period is found before a DirectorySeparatorChar or AltDirectorySeparatorChar character, the returned read-only span contains the period and the characters after it; otherwise, ReadOnlySpan<T>.Empty is returned.
            String fileName = txtUser.Text;
            fileName = fileName + extension;

            String path = System.IO.Directory.GetCurrentDirectory();
            String pathWithName = System.IO.Path.Combine(path, fileName);
            fs.Save(pathWithName);
            Student std = new Student();
            std.UserName = txtUser.Text;
            std.PassWord = txtPass.Text;
            std.SelectAge = txtAge.Text;
            std.imagePath = pathWithName;
            if (rdbtnMale.Checked)
            {
                std.SelectGender = "Male";
            }
            else
            {
                if (rdbtnFemale.Checked)
                {
                    std.SelectGender = "Female";
                }
            }
            DataStore.data.Add(std);
            //pictureBox1.Load(std.imagePath);
            
            MessageBox.Show("SignUp Successfully");


        }
    

        private void btnUpload_Click(object sender, EventArgs e)
        {
            OpenFileDialog fileDialog = new OpenFileDialog(); // open file Dialogue
            fileDialog.InitialDirectory = "C:\\Users\\Muhammad Usman Ghani\\Pictures";
            fileDialog.Title = "Choose image file";
            fileDialog.Filter = "JPeg Image|*.jpg|Bitmap Image|*.bmp|Gif Image|*.gif";
            if (fileDialog.ShowDialog() == DialogResult.OK)
            {
                fPath = fileDialog.FileName;
                fs = Image.FromFile(fPath);

                //this.btnPicture.Image.Save(fs, System.Drawing.Imaging.ImageFormat.Jpeg);
                //pictureBox1.Visible = true;
                //fs.RotateFlip(RotateFlipType.Rotate90FlipNone);
                //fs.Save("your-new-image-file-path");
                pictureBox1.Image = fs;
                pictureBox1.SizeMode = PictureBoxSizeMode.StretchImage;             //to display the pic in its own size
                //pictureBox1.Load();
            }

            //OpenFileDialog file = new OpenFileDialog();
            //file.Filter = "Jpegs|*.Jpegs|png|*.png|GIf|*.Gif|jpg|*.jpg|Bitmaps |*.Bitmaps";
            //file.Title = "Please Select an Image";
            //if (file.ShowDialog() == DialogResult.OK)
            //{
            //    pictureBox1.Image = new Bitmap(file.OpenFile());
            //    fPath = file.FileName;
            //    FileStream fs = new FileStream(fPath, FileMode.Open, FileAccess.Read);
            //    BinaryReader binaryReader= new BinaryReader(fs);
            //    binaryphoto=binaryReader.ReadBytes((int)fs.Length);
            //    fs.Close();
            //}
        }

        private void LlblLogin_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            //string fPath;
            //System.Drawing.Image fs;
            Login_Form login = new Login_Form();
            login.ShowDialog();
        }
    }
}