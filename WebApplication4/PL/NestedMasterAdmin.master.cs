using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;


namespace WebApplication4.PL
{
    public partial class NestedAdmin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            foreach (MenuItem menuitem in Menu2.Items)
            {

                if (menuitem.Value == "Daily Report")
                {
                    // coloring the main menu item
                    menuitem.Text = "<div style='color: White'>" + menuitem.Text + "</div>";

                }
                foreach (MenuItem submenuitem in menuitem.ChildItems)
                {
                    if (submenuitem.Value == "Available Medicines")
                    {
                        // coloring the sub menu item
                        submenuitem.Text = "<div style='color: #009999'>" + submenuitem.Text + "</div>";
                    }
                }
                foreach (MenuItem submenuitem in menuitem.ChildItems)
                {
                    if (submenuitem.Value == "Out Of Stock")
                    {
                        // coloring the sub menu item
                        submenuitem.Text = "<div style='color: #009999'>" + submenuitem.Text + "</div>";
                    }
                }


            }
            //if (Session["uname"] != null)
            //{
            //    Label1.Text = "Welcome" + " " + Session["uname"].ToString();
            //}
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1));
            Response.Cache.SetNoStore();
           
        }


        
}
}