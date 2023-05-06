namespace WinFormsApp1
{
    partial class Form1
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.lblUser = new System.Windows.Forms.Label();
            this.lblPass = new System.Windows.Forms.Label();
            this.lblGender = new System.Windows.Forms.Label();
            this.lblAge = new System.Windows.Forms.Label();
            this.lblUploadPic = new System.Windows.Forms.Label();
            this.txtUser = new System.Windows.Forms.TextBox();
            this.txtPass = new System.Windows.Forms.TextBox();
            this.txtAge = new System.Windows.Forms.TextBox();
            this.rdbtnMale = new System.Windows.Forms.RadioButton();
            this.rdbtnFemale = new System.Windows.Forms.RadioButton();
            this.btnUpload = new System.Windows.Forms.Button();
            this.btnSignUp = new System.Windows.Forms.Button();
            this.LlblLogin = new System.Windows.Forms.LinkLabel();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // lblUser
            // 
            this.lblUser.AutoSize = true;
            this.lblUser.Location = new System.Drawing.Point(68, 54);
            this.lblUser.Name = "lblUser";
            this.lblUser.Size = new System.Drawing.Size(99, 25);
            this.lblUser.TabIndex = 0;
            this.lblUser.Text = "User Name";
            // 
            // lblPass
            // 
            this.lblPass.AutoSize = true;
            this.lblPass.Location = new System.Drawing.Point(68, 126);
            this.lblPass.Name = "lblPass";
            this.lblPass.Size = new System.Drawing.Size(87, 25);
            this.lblPass.TabIndex = 1;
            this.lblPass.Text = "Password";
            // 
            // lblGender
            // 
            this.lblGender.AutoSize = true;
            this.lblGender.Location = new System.Drawing.Point(68, 197);
            this.lblGender.Name = "lblGender";
            this.lblGender.Size = new System.Drawing.Size(69, 25);
            this.lblGender.TabIndex = 2;
            this.lblGender.Text = "Gender";
            // 
            // lblAge
            // 
            this.lblAge.AutoSize = true;
            this.lblAge.Location = new System.Drawing.Point(68, 282);
            this.lblAge.Name = "lblAge";
            this.lblAge.Size = new System.Drawing.Size(108, 25);
            this.lblAge.TabIndex = 3;
            this.lblAge.Text = "Age in Years";
            // 
            // lblUploadPic
            // 
            this.lblUploadPic.AutoSize = true;
            this.lblUploadPic.Location = new System.Drawing.Point(68, 338);
            this.lblUploadPic.Name = "lblUploadPic";
            this.lblUploadPic.Size = new System.Drawing.Size(168, 25);
            this.lblUploadPic.TabIndex = 4;
            this.lblUploadPic.Text = "Upload Your Picture";
            // 
            // txtUser
            // 
            this.txtUser.Location = new System.Drawing.Point(188, 55);
            this.txtUser.Name = "txtUser";
            this.txtUser.Size = new System.Drawing.Size(204, 31);
            this.txtUser.TabIndex = 5;
            // 
            // txtPass
            // 
            this.txtPass.Location = new System.Drawing.Point(188, 123);
            this.txtPass.Name = "txtPass";
            this.txtPass.Size = new System.Drawing.Size(204, 31);
            this.txtPass.TabIndex = 6;
            // 
            // txtAge
            // 
            this.txtAge.Location = new System.Drawing.Point(188, 282);
            this.txtAge.Name = "txtAge";
            this.txtAge.Size = new System.Drawing.Size(150, 31);
            this.txtAge.TabIndex = 7;
            // 
            // rdbtnMale
            // 
            this.rdbtnMale.AutoSize = true;
            this.rdbtnMale.Location = new System.Drawing.Point(188, 197);
            this.rdbtnMale.Name = "rdbtnMale";
            this.rdbtnMale.Size = new System.Drawing.Size(75, 29);
            this.rdbtnMale.TabIndex = 8;
            this.rdbtnMale.TabStop = true;
            this.rdbtnMale.Text = "Male";
            this.rdbtnMale.UseVisualStyleBackColor = true;
            // 
            // rdbtnFemale
            // 
            this.rdbtnFemale.AutoSize = true;
            this.rdbtnFemale.Location = new System.Drawing.Point(299, 197);
            this.rdbtnFemale.Name = "rdbtnFemale";
            this.rdbtnFemale.Size = new System.Drawing.Size(93, 29);
            this.rdbtnFemale.TabIndex = 9;
            this.rdbtnFemale.TabStop = true;
            this.rdbtnFemale.Text = "Female";
            this.rdbtnFemale.UseVisualStyleBackColor = true;
            this.rdbtnFemale.CheckedChanged += new System.EventHandler(this.rdbtnFemale_CheckedChanged);
            // 
            // btnUpload
            // 
            this.btnUpload.Location = new System.Drawing.Point(280, 333);
            this.btnUpload.Name = "btnUpload";
            this.btnUpload.Size = new System.Drawing.Size(112, 34);
            this.btnUpload.TabIndex = 10;
            this.btnUpload.Text = "Upload";
            this.btnUpload.UseVisualStyleBackColor = true;
            this.btnUpload.Click += new System.EventHandler(this.btnUpload_Click);
            // 
            // btnSignUp
            // 
            this.btnSignUp.Location = new System.Drawing.Point(151, 381);
            this.btnSignUp.Name = "btnSignUp";
            this.btnSignUp.Size = new System.Drawing.Size(112, 34);
            this.btnSignUp.TabIndex = 11;
            this.btnSignUp.Text = "Sign Up";
            this.btnSignUp.UseVisualStyleBackColor = true;
            this.btnSignUp.Click += new System.EventHandler(this.btnSignUp_Click);
            // 
            // LlblLogin
            // 
            this.LlblLogin.AutoSize = true;
            this.LlblLogin.Location = new System.Drawing.Point(299, 386);
            this.LlblLogin.Name = "LlblLogin";
            this.LlblLogin.Size = new System.Drawing.Size(56, 25);
            this.LlblLogin.TabIndex = 12;
            this.LlblLogin.TabStop = true;
            this.LlblLogin.Text = "Login";
            this.LlblLogin.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LlblLogin_LinkClicked);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Location = new System.Drawing.Point(463, 54);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(531, 552);
            this.pictureBox1.TabIndex = 14;
            this.pictureBox1.TabStop = false;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(10F, 25F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1169, 683);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.LlblLogin);
            this.Controls.Add(this.btnSignUp);
            this.Controls.Add(this.btnUpload);
            this.Controls.Add(this.rdbtnFemale);
            this.Controls.Add(this.rdbtnMale);
            this.Controls.Add(this.txtAge);
            this.Controls.Add(this.txtPass);
            this.Controls.Add(this.txtUser);
            this.Controls.Add(this.lblUploadPic);
            this.Controls.Add(this.lblAge);
            this.Controls.Add(this.lblGender);
            this.Controls.Add(this.lblPass);
            this.Controls.Add(this.lblUser);
            this.Name = "Form1";
            this.Text = "SignUp";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private Label lblUser;
        private Label lblPass;
        private Label lblGender;
        private Label lblAge;
        private Label lblUploadPic;
        private TextBox txtUser;
        private TextBox txtPass;
        private TextBox txtAge;
        private RadioButton rdbtnMale;
        private RadioButton rdbtnFemale;
        private Button btnUpload;
        private Button btnSignUp;
        private LinkLabel LlblLogin;
        private PictureBox pictureBox1;
    }
}