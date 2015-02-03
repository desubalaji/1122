using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4.PL
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                imagescroll();
            }
        }

       
          

        protected void Timer1_Tick1(object sender, EventArgs e)
        {
            imagescroll();
        }

        private void imagescroll()
        {
            Random r = new Random();
            int i = r.Next(1, 5);
            Image1.ImageUrl = "~/Images/" + i.ToString() + ".png";
        }
    }
}