using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        public Menu MasterMenu
        {
            get { return Menu1; }
            set { Menu1 = value; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Role"] != null)
            {
                if (Session["Role"].ToString().Equals("Administrator"))
                {

                    //Menu2.Visible = true;
                    Menu1.Visible = false;
                }
                else if (Session["Role"].ToString().Equals("Store Keeper"))
                {
                    Menu1.Visible = false;
                }
            }

   //         else if(Session["Role"]=="Store Keeper")
   //         {
   //MenuCtl2.Visible = true;
   //Menu1.Visible = false;  
   //         }

        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            Response.Redirect("About.aspx");
        }
    }
}