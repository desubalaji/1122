using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace WebApplication4.PL
{
    public partial class AddMedicines : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Master.Master.FindControl("Menu1").Visible = false;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //try
            //{
           
            string medid = "";
                if (medid == TextBox1.Text)
                {
                    Response.Write("<Script language=javascript>alert('Medicine ID already exists');location='AddMedicines.aspx';</Script>");
                    //Response.Write("Medid already exists");
                    //Response.Redirect("AvailableMedicines.aspx");
                }
                else
                {
                    BLL.BLLRequest add = new BLL.BLLRequest();
                    add.Medicines(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text);
                }
                Response.Redirect("AvailableMedicines.aspx");
            }
            //catch (Exception x)
            //{
            //    x.Message("the message id could not be repeated");
            //}

        }
    }
