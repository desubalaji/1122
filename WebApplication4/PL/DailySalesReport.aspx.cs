using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication4.PL
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Master.Master.FindControl("Menu1").Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            BLL.BLLSales rep = new BLL.BLLSales();
            DataTable t = rep.Report();
            GridView1.DataSource = t;
            GridView1.DataBind();
        }
    }
}