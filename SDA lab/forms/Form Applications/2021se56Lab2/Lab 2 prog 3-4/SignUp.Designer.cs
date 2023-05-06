namespace Lab_2_prog_2
{
    partial class SignUp
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
            this.txtpassSign = new System.Windows.Forms.TextBox();
            this.txtusrSign = new System.Windows.Forms.TextBox();
            this.lblPasswordSignup = new System.Windows.Forms.Label();
            this.lblUserNameSign = new System.Windows.Forms.Label();
            this.btnLoginS = new System.Windows.Forms.Button();
            this.btnSignupS = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // txtpassSign
            // 
            this.txtpassSign.Location = new System.Drawing.Point(266, 141);
            this.txtpassSign.Name = "txtpassSign";
            this.txtpassSign.Size = new System.Drawing.Size(195, 31);
            this.txtpassSign.TabIndex = 17;
            // 
            // txtusrSign
            // 
            this.txtusrSign.Location = new System.Drawing.Point(266, 73);
            this.txtusrSign.Name = "txtusrSign";
            this.txtusrSign.Size = new System.Drawing.Size(195, 31);
            this.txtusrSign.TabIndex = 16;
            // 
            // lblPasswordSignup
            // 
            this.lblPasswordSignup.AutoSize = true;
            this.lblPasswordSignup.Location = new System.Drawing.Point(75, 144);
            this.lblPasswordSignup.Name = "lblPasswordSignup";
            this.lblPasswordSignup.Size = new System.Drawing.Size(87, 25);
            this.lblPasswordSignup.TabIndex = 15;
            this.lblPasswordSignup.Text = "Password";
            // 
            // lblUserNameSign
            // 
            this.lblUserNameSign.AutoSize = true;
            this.lblUserNameSign.Location = new System.Drawing.Point(75, 76);
            this.lblUserNameSign.Name = "lblUserNameSign";
            this.lblUserNameSign.Size = new System.Drawing.Size(99, 25);
            this.lblUserNameSign.TabIndex = 14;
            this.lblUserNameSign.Text = "User Name";
            // 
            // btnLoginS
            // 
            this.btnLoginS.Location = new System.Drawing.Point(146, 316);
            this.btnLoginS.Name = "btnLoginS";
            this.btnLoginS.Size = new System.Drawing.Size(248, 34);
            this.btnLoginS.TabIndex = 13;
            this.btnLoginS.Text = "Already Have an Account ?\r\n\r\n";
            this.btnLoginS.UseVisualStyleBackColor = true;
            this.btnLoginS.Click += new System.EventHandler(this.btnLoginS_Click);
            // 
            // btnSignupS
            // 
            this.btnSignupS.Location = new System.Drawing.Point(203, 237);
            this.btnSignupS.Name = "btnSignupS";
            this.btnSignupS.Size = new System.Drawing.Size(112, 34);
            this.btnSignupS.TabIndex = 12;
            this.btnSignupS.Text = "Sign Up";
            this.btnSignupS.UseVisualStyleBackColor = true;
            this.btnSignupS.Click += new System.EventHandler(this.btnSignupS_Click);
            // 
            // SignUp
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(10F, 25F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.txtpassSign);
            this.Controls.Add(this.txtusrSign);
            this.Controls.Add(this.lblPasswordSignup);
            this.Controls.Add(this.lblUserNameSign);
            this.Controls.Add(this.btnLoginS);
            this.Controls.Add(this.btnSignupS);
            this.Name = "SignUp";
            this.Text = "Sign Up Form";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private TextBox txtpassSign;
        private TextBox txtusrSign;
        private Label lblPasswordSignup;
        private Label lblUserNameSign;
        private Button btnLoginS;
        private Button btnSignupS;
    }
}