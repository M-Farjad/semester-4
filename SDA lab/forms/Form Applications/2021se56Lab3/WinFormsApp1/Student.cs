using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WinFormsApp1
{
    internal class Student
    {
            private string userName;
            private string passWord;
            private string selectGender;
            private string selectAge;
            private string fileContent;
            private System.Drawing.Image fs;
            public string imagePath;
            //Encapsulation
            public string UserName
            {
                get
                {
                    return userName;
                }
                set
                {
                    userName = value;
                }
            }
            public string PassWord
            {
                get
                {
                    return passWord;
                }
                set
                {
                    passWord = value;
                }
            }
            public string SelectGender
            {
                get
                {
                    return selectGender;
                }
                set
                {
                    selectGender = value;
                }
            }
            public string SelectAge
            {
                get
                {
                    return selectAge;
                }
                set
                {
                    selectAge = value;
                }
            }
            public string FileContent
            {
                get
                {
                    return fileContent;
                }
                set
                {
                    fileContent = value;
                }
            }
    }
}
