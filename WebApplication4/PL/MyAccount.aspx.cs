using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4.PL
{
    public partial class MyAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["UserName"] != null && Request.Cookies["Password"] != null)
                {
                    TextBox1.Text = Request.Cookies["UserName"].Value;
                    TextBox2.Attributes["value"] = Request.Cookies["Password"].Value;
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }
        protected void RememberMe()
        {
            if (CheckBox1.Checked)
            {
                Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(30);
                Response.Cookies["Password"].Expires = DateTime.Now.AddDays(30);
            }
            else
            {
                Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);

            }
            Response.Cookies["UserName"].Value = TextBox1.Text.Trim();
            Response.Cookies["Password"].Value = TextBox2.Text.Trim();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["uname"] = TextBox1.Text;

            BLL.BLLLogin login = new BLL.BLLLogin();
            //bool abc;
            string role;
            //abc = login.Login(TextBox1.Text, TextBox2.Text);
            role = login.Role(TextBox1.Text, TextBox2.Text);
            
            if (role == "Store Keeper")
            {
                RememberMe();
                Response.Redirect("StoreKeeperView.aspx");
            } 
                else if (role == "Administrator")
            {
                RememberMe();
                Response.Redirect("AdminView.aspx");

            }
            else
            {
                Response.Write("<Script language=javascript>alert('Access Denied');location='MyAccount.aspx';</Script>");
                //Response.Redirect("MyAccount.aspx");

            }
                
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ForgotPassword.aspx");
        }

       

       
    }
}