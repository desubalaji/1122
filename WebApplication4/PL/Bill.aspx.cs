﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Text;

namespace WebApplication4.PL
{
    public partial class Bill : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                Master.Master.FindControl("Menu1").Visible = false;
                BLL.BLLBilling drug = new BLL.BLLBilling();
                DataTable t = drug.bill();
                GridView1.DataSource = t;
                GridView1.DataBind();
            }

            //Master.Master.FindControl("Menu1").Visible = false;

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            BLL.BLLBilling generate = new BLL.BLLBilling();
            DataTable t = generate.Generatebill();
            GridView1.DataSource = t;
            GridView1.DataBind();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            BLL.BLLBilling Ref = new BLL.BLLBilling();
            DataTable t = Ref.Refresh();
            GridView1.DataSource = t;
            GridView1.DataBind();

        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }
        /// <summary>
        /// This event is used to export gridview data to word document
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>


        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.ClearContent();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", string.Format("attachment; filename={0}", "Customers.xls"));
            Response.ContentType = "application/ms-excel";
            StringWriter sw = new StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw);
            GridView1.AllowPaging = false;
            //Change the Header Row back to white color
            GridView1.HeaderRow.Style.Add("background-color", "#FFFFFF");
            //Applying stlye to gridview header cells
            for (int i = 0; i < GridView1.HeaderRow.Cells.Count; i++)
            {
                GridView1.HeaderRow.Cells[i].Style.Add("background-color", "#507CD1");
            }
            int j = 1;
            //This loop is used to apply stlye to cells based on particular row
            foreach (GridViewRow gvrow in GridView1.Rows)
            {
                //gvrow.BackColor = Color.White;
                if (j <= GridView1.Rows.Count)
                {
                    if (j % 2 != 0)
                    {
                        for (int k = 0; k < gvrow.Cells.Count; k++)
                        {
                            gvrow.Cells[k].Style.Add("background-color", "#EFF3FB");
                        }
                    }
                }
                j++;
            }
            GridView1.RenderControl(htw);
            Response.Write(sw.ToString());
            Response.End();
            
        }
    }
}