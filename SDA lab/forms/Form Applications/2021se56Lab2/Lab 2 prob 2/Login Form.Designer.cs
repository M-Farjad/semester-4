namespace Lab_2
{
    partial class Login_Form
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
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
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.lblUserName = new System.Windows.Forms.Label();
            this.lblPassword = new System.Windows.Forms.Label();
            this.txtUserName = new System.Windows.Forms.TextBox();
            this.txtPassword = new System.Windows.Forms.TextBox();
            this.lblAuth = new System.Windows.Forms.Label();
            this.btnLogin = new System.Windows.Forms.Button();
            this.btnSignUp = new System.Windows.Forms.Button();
            this.txtPasssignUp = new System.Windows.Forms.TextBox();
            this.txtUsersignUp = new System.Windows.Forms.TextBox();
            this.lblSignPassword = new System.Windows.Forms.Label();
            this.lblSignUsrName = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // lblUserName
            // 
            this.lblUserName.AutoSize = true;
            this.lblUserName.Location = new System.Drawing.Point(12, 25);
            this.lblUserName.Name = "lblUserName";
            this.lblUserName.Size = new System.Drawing.Size(99, 25);
            this.lblUserName.TabIndex = 0;
            this.lblUserName.Text = "User Name";
            // 
            // lblPassword
            // 
            this.lblPassword.AutoSize = true;
            this.lblPassword.Location = new System.Drawing.Point(12, 105);
            this.lblPassword.Name = "lblPassword";
            this.lblPassword.Size = new System.Drawing.Size(87, 25);
            this.lblPassword.TabIndex = 1;
            this.lblPassword.Text = "Password";
            // 
            // txtUserName
            // 
            this.txtUserName.Location = new System.Drawing.Point(117, 19);
            this.txtUserName.Name = "txtUserName";
            this.txtUserName.Size = new System.Drawing.Size(150, 31);
            this.txtUserName.TabIndex = 2;
            // 
            // txtPassword
            // 
            this.txtPassword.Location = new System.Drawing.Point(117, 99);
            this.txtPassword.Name = "txtPassword";
            this.txtPassword.Size = new System.Drawing.Size(150, 31);
            this.txtPassword.TabIndex = 3;
            // 
            // lblAuth
            // 
            this.lblAuth.AutoSize = true;
            this.lblAuth.Location = new System.Drawing.Point(32, 234);
            this.lblAuth.Name = "lblAuth";
            this.lblAuth.Size = new System.Drawing.Size(0, 25);
            this.lblAuth.TabIndex = 5;
            this.lblAuth.Click += new System.EventHandler(this.lblAuth_Click);
            // 
            // btnLogin
            // 
            this.btnLogin.Location = new System.Drawing.Point(12, 176);
            this.btnLogin.Name = "btnLogin";
            this.btnLogin.Size = new System.Drawing.Size(112, 34);
            this.btnLogin.TabIndex = 6;
            this.btnLogin.Text = "Login";
            this.btnLogin.UseVisualStyleBackColor = true;
            this.btnLogin.Click += new System.EventHandler(this.btnLogin_Click);
            // 
            // btnSignUp
            // 
            this.btnSignUp.Location = new System.Drawing.Point(363, 176);
            this.btnSignUp.Name = "btnSignUp";
            this.btnSignUp.Size = new System.Drawing.Size(112, 34);
            this.btnSignUp.TabIndex = 21;
            this.btnSignUp.Text = "Sign Up";
            this.btnSignUp.UseVisualStyleBackColor = true;
            this.btnSignUp.Click += new System.EventHandler(this.btnSignUp_Click);
            // 
            // txtPasssignUp
            // 
            this.txtPasssignUp.Location = new System.Drawing.Point(468, 80);
            this.txtPasssignUp.Name = "txtPasssignUp";
            this.txtPasssignUp.Size = new System.Drawing.Size(150, 31);
            this.txtPasssignUp.TabIndex = 20;
            // 
            // txtUsersignUp
            // 
            this.txtUsersignUp.Location = new System.Drawing.Point(468, 19);
            this.txtUsersignUp.Name = "txtUsersignUp";
            this.txtUsersignUp.Size = new System.Drawing.Size(150, 31);
            this.txtUsersignUp.TabIndex = 19;
            // 
            // lblSignPassword
            // 
            this.lblSignPassword.AutoSize = true;
            this.lblSignPassword.Location = new System.Drawing.Point(363, 86);
            this.lblSignPassword.Name = "lblSignPassword";
            this.lblSignPassword.Size = new System.Drawing.Size(87, 25);
            this.lblSignPassword.TabIndex = 18;
            this.lblSignPassword.Text = "Password";
            // 
            // lblSignUsrName
            // 
            this.lblSignUsrName.AutoSize = true;
            this.lblSignUsrName.Location = new System.Drawing.Point(363, 25);
            this.lblSignUsrName.Name = "lblSignUsrName";
            this.lblSignUsrName.Size = new System.Drawing.Size(99, 25);
            this.lblSignUsrName.TabIndex = 17;
            this.lblSignUsrName.Text = "User Name";
            // 
            // Login_Form
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(10F, 25F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(689, 393);
            this.Controls.Add(this.btnSignUp);
            this.Controls.Add(this.txtPasssignUp);
            this.Controls.Add(this.txtUsersignUp);
            this.Controls.Add(this.lblSignPassword);
            this.Controls.Add(this.lblSignUsrName);
            this.Controls.Add(this.btnLogin);
            this.Controls.Add(this.lblAuth);
            this.Controls.Add(this.txtPassword);
            this.Controls.Add(this.txtUserName);
            this.Controls.Add(this.lblPassword);
            this.Controls.Add(this.lblUserName);
            this.Name = "Login_Form";
            this.Text = "Login_Form";
            this.Load += new System.EventHandler(this.Login_Form_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private Label lblUserName;
        private Label lblPassword;
        private TextBox txtUserName;
        private TextBox txtPassword;
        private Label lblAuth;
        private Button btnLogin;
        private Button btnSignUp;
        private TextBox txtPasssignUp;
        private TextBox txtUsersignUp;
        private Label lblSignPassword;
        private Label lblSignUsrName;
    }
}