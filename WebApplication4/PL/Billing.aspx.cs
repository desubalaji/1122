using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace WebApplication4.PL
{
    public partial class WebForm6 : System.Web.UI.Page
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
                FillCustomerInGrid();
                //BLL.BLLBilling bill = new BLL.BLLBilling();/

           
                //GridView2.DataSource = t;
                //GridView2.DataBind();
               
            }
           
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ////GridViewRow row = (GridViewRow)GridView1;
            //GridViewRow row = (GridViewRow)GridView1.Rows[0];
            //TextBox MedID = (TextBox)(GridViewRow)GridView1.Rows[0];
            BLL.BLLBilling bill = new BLL.BLLBilling();
            bill.BLLbill();
            Response.Redirect("Bill.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("StoreKeeperView.aspx");
        }

       
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            FillCustomerInGrid();
        }
        private void FillCustomerInGrid()
        {
            //string str1 = "update allocation set AId='" + requirednumber + "' where requestId = '" + requestId + "'";
            string str1 = "select * from MedList";
            SqlConnection con = new SqlConnection(@"Data Source=172.16.153.100\MSQLSERVER2008R2;Initial Catalog=AarogyaPharmacy;Persist Security Info=True;uid=sa;pwd=satyam123$");
            con.Open();
            SqlCommand cmd = new SqlCommand(str1, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.SelectCommand = cmd;
            // string res = (String)cmd.ExecuteScalar();
            //SqlCommandBuilder cb = new SqlCommandBuilder(da);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DataTable dt = ds.Tables[0];
            //string res = (String)cmd.ExecuteScalar();
            //ds.AcceptChanges();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void GridView1_RowCancelingEdit1(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            FillCustomerInGrid();
        }
        private void FillCustomerInGrid(string Medid,string id)
        {
            int Id = Convert.ToInt32(id);
            string str1 = "update MedList set Quantity= '" + Id + "' where MedicineId='" + Medid + "'";
            SqlConnection con = new SqlConnection(@"Data Source=172.16.153.100\MSQLSERVER2008R2;Initial Catalog=AarogyaPharmacy;Persist Security Info=True;uid=sa;pwd=satyam123$");
            con.Open();
            SqlCommand cmd = new SqlCommand(str1, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.SelectCommand = cmd;
            // string res = (String)cmd.ExecuteScalar();
            SqlCommandBuilder cb = new SqlCommandBuilder(da);
            DataSet ds = new DataSet();
            da.Fill(ds,"MedList");
            string res = (String)cmd.ExecuteScalar();
            ds.AcceptChanges();
            GridView1.DataSource = res;
            GridView1.DataBind();
            FillCustomerInGrid();

        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    FillCustomerInGrid();
        //}
        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
        protected void GridView1_RowUpdating1(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            TextBox MedID = (TextBox)row.Cells[1].Controls[0];
            TextBox Quantity = (TextBox)row.Cells[3].Controls[0];
           
            //TextBox pencils = (TextBox)row.Cells[3].Controls[0];



            //req.UpdateRequest(requestID.Text, Convert.ToInt32(requirednumber.Text));

            GridView1.EditIndex = -1;



            FillCustomerInGrid(MedID.Text, Quantity.Text);
        }


      

       
            //FillCustomerInGrid();
            
            //string Medid="";
            //string value = "";
            
            // foreach (GridViewRow row in GridView2.Rows)
            //{
            //    if (row.RowType == DataControlRowType.DataRow)
            //    {
            //        string key = GridView2.DataKeys[row.RowIndex].Value.ToString();
                    
            //        TextBox txt = (TextBox)row.FindControl("txtedit");
            //        value = txt.Text;
            //        Medid = row.Cells[1].Text;
            //    }
            //    BLL.BLLBilling bill = new BLL.BLLBilling();

            //   DataTable t=bill.billing(Medid,value);
            //    GridView2.DataSource = t;
            //    GridView2.DataBind();






            //BLL.BLLBilling bill = new BLL.BLLBilling();
            ////DataTable t = bill.billing();
            

            //foreach (GridViewRow row in GridView2.Rows)
            //{
            //    TextBox tb1 = (TextBox)row.FindControl("TextBox1");
            //    string id = GridView2.DataKeys[row.RowIndex].Values[0];
            //    DataTable t= bill.billing(id);
            //    GridView2.DataSource=t;
            //    GridView2.DataBind();
            //    //string query = "update MedList set Quatity = @value WHERE MedicineId=@id";

            //    ////and soon ...
            //    //cmd.ExecuteNonQuery();
            

        }
    }
