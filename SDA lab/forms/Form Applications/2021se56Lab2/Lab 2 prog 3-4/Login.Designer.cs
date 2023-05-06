namespace Lab_2_prog_2
{
    partial class Login
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
            this.txtpassLogin = new System.Windows.Forms.TextBox();
            this.txtusrLogin = new System.Windows.Forms.TextBox();
            this.lblPasswordLogin = new System.Windows.Forms.Label();
            this.lblUserNameLogin = new System.Windows.Forms.Label();
            this.btnSignL = new System.Windows.Forms.Button();
            this.btnLoginL = new System.Windows.Forms.Button();
            this.btnforgetPass = new System.Windows.Forms.Button();
            this.lblAuthL = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // txtpassLogin
            // 
            this.txtpassLogin.Location = new System.Drawing.Point(243, 147);
            this.txtpassLogin.Name = "txtpassLogin";
            this.txtpassLogin.Size = new System.Drawing.Size(195, 31);
            this.txtpassLogin.TabIndex = 11;
            // 
            // txtusrLogin
            // 
            this.txtusrLogin.Location = new System.Drawing.Point(243, 79);
            this.txtusrLogin.Name = "txtusrLogin";
            this.txtusrLogin.Size = new System.Drawing.Size(195, 31);
            this.txtusrLogin.TabIndex = 10;
            // 
            // lblPasswordLogin
            // 
            this.lblPasswordLogin.AutoSize = true;
            this.lblPasswordLogin.Location = new System.Drawing.Point(52, 150);
            this.lblPasswordLogin.Name = "lblPasswordLogin";
            this.lblPasswordLogin.Size = new System.Drawing.Size(173, 25);
            this.lblPasswordLogin.TabIndex = 9;
            this.lblPasswordLogin.Text = "Enter your Password";
            // 
            // lblUserNameLogin
            // 
            this.lblUserNameLogin.AutoSize = true;
            this.lblUserNameLogin.Location = new System.Drawing.Point(52, 82);
            this.lblUserNameLogin.Name = "lblUserNameLogin";
            this.lblUserNameLogin.Size = new System.Drawing.Size(185, 25);
            this.lblUserNameLogin.TabIndex = 8;
            this.lblUserNameLogin.Text = "Enter your User Name";
            // 
            // btnSignL
            // 
            this.btnSignL.Location = new System.Drawing.Point(123, 322);
            this.btnSignL.Name = "btnSignL";
            this.btnSignL.Size = new System.Drawing.Size(225, 34);
            this.btnSignL.TabIndex = 7;
            this.btnSignL.Text = "Don\'t Have an Account ?";
            this.btnSignL.UseVisualStyleBackColor = true;
            this.btnSignL.Click += new System.EventHandler(this.btnSignL_Click);
            // 
            // btnLoginL
            // 
            this.btnLoginL.Location = new System.Drawing.Point(180, 243);
            this.btnLoginL.Name = "btnLoginL";
            this.btnLoginL.Size = new System.Drawing.Size(112, 34);
            this.btnLoginL.TabIndex = 6;
            this.btnLoginL.Text = "Login";
            this.btnLoginL.UseVisualStyleBackColor = true;
            this.btnLoginL.Click += new System.EventHandler(this.btnLoginL_Click);
            // 
            // btnforgetPass
            // 
            this.btnforgetPass.Location = new System.Drawing.Point(123, 386);
            this.btnforgetPass.Name = "btnforgetPass";
            this.btnforgetPass.Size = new System.Drawing.Size(225, 34);
            this.btnforgetPass.TabIndex = 12;
            this.btnforgetPass.Text = "Forget Password";
            this.btnforgetPass.UseVisualStyleBackColor = true;
            // 
            // lblAuthL
            // 
            this.lblAuthL.AutoSize = true;
            this.lblAuthL.Location = new System.Drawing.Point(314, 249);
            this.lblAuthL.Name = "lblAuthL";
            this.lblAuthL.Size = new System.Drawing.Size(0, 25);
            this.lblAuthL.TabIndex = 13;
            // 
            // Login
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(10F, 25F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(528, 450);
            this.Controls.Add(this.lblAuthL);
            this.Controls.Add(this.btnforgetPass);
            this.Controls.Add(this.txtpassLogin);
            this.Controls.Add(this.txtusrLogin);
            this.Controls.Add(this.lblPasswordLogin);
            this.Controls.Add(this.lblUserNameLogin);
            this.Controls.Add(this.btnSignL);
            this.Controls.Add(this.btnLoginL);
            this.Name = "Login";
            this.Text = "Login";
            this.Load += new System.EventHandler(this.Login_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private TextBox txtpassLogin;
        private TextBox txtusrLogin;
        private Label lblPasswordLogin;
        private Label lblUserNameLogin;
        private Button btnSignL;
        private Button btnLoginL;
        private Button btnforgetPass;
        private Label lblAuthL;
    }
}