using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4.PL
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            BLL.BLLForgotPassword pass = new BLL.BLLForgotPassword();


            pass.passdetails(TextBox2.Text,DropDownList1.Text, TextBox1.Text,TextBox3.Text);


            Response.Redirect("MyAccount.aspx");
        }
    }
}