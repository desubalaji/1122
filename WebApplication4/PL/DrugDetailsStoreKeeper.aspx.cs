using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication4.PL
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                Master.Master.FindControl("Menu1").Visible = false;


                BLL.BLLDrugDetails drug = new BLL.BLLDrugDetails();
                DataTable t = drug.Drugdetails();
                GridView1.DataSource = t;
                GridView1.DataBind();
            }
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string data = "";
            //int m = 0;

            string Medid;
            string Medicinename;
            string Quantity;
            string price;
            int count = 0;


            CheckBox chk1 = (CheckBox)GridView1.Rows[1].FindControl("chkCtrl");

            foreach (GridViewRow row in GridView1.Rows)
            {

                if (row.RowType == DataControlRowType.DataRow)
                {

                //CheckBox chk = (CheckBox)row.FindControl("chkCtrl");
                CheckBox chk = (row.Cells[0].FindControl("chkCtrl") as CheckBox);
                if (chk.Checked)
                {
                    Medid = row.Cells[1].Text;
                    Medicinename = row.Cells[2].Text;
                    Quantity = row.Cells[3].Text;
                    price = row.Cells[4].Text;
                    data = data + Medid + " ,  " + Medicinename + " , " + Quantity + "," + price + "<br>";
                    Response.Write(Medid);
                    count++;
                    BLL.BLLDrugDetails bill = new BLL.BLLDrugDetails();

                    bill.billing(count,Medid, Medicinename, Quantity, price);
                    
                }
              
                    


            }
                } 
                //BLL.BLLDrugDetails bill = new BLL.BLLDrugDetails();

                //bill.billing(Medid, Medicinename, Quantity, price);
                //Label1.Text = data;
            Response.Redirect("Billing.aspx");
            }

      }
            //BLL.BLLDrugDetails bill = new BLL.BLLDrugDetails();

            //bill.billing(Medid, Medicinename, Quantity, price);
            //Label1.Text = data;
        }
    

