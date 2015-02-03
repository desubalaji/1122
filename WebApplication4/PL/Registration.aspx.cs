using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4.PL
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            BLL.BLLRegistration register = new BLL.BLLRegistration();

            //string gender;
            //if (rb_male.Checked)
            //{
            //    gender = rb_male.Text;
            //}
            //else
            //{
            //    gender = rb_female.Text;
            //}
           bool abc= register.enterdetails(TextBox1.Text, TextBox2.Text, DropDownList2.Text, TextBox3.Text, Label1.Text, TextBox4.Text, DropDownList1.Text, TextBox8.Text, TextBox5.Text, TextBox6.Text, TextBox7.Text);

           if (abc == true)
           {
               Response.Redirect("MyAccount.aspx");
           }
           else
           {
               Response.Write("<Script language=javascript>alert('User ID already exists');location='Registration.aspx';</Script>");
           }
            
        }

        //protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        //{

        //}

        //protected void rb_female_CheckedChanged(object sender, EventArgs e)
        //{

        //}

        protected void imgPopup_Click(object sender, ImageClickEventArgs e)
        {
            
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {
            //try
            //{ 

            //}
            //Response.Write("<Script language=javascript>alert('User ID already exists');location='Registration.aspx';</Script>");
        }

       
    }
}