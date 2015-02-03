using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace WebApplication4.BLL
{
    public class BLLDrugDetails
    {
        public DataTable Drugdetails()
        {
            DAL.DALDrugDetails drug = new DAL.DALDrugDetails();

            DataTable d = drug.DALDrug();
            return d;


        }
        public void billing(int c,string mid ,string mname,string quant, string price)
        {
            DAL.DALDrugDetails bill = new DAL.DALDrugDetails();
            bill.billing(c,mid,mname,quant,price);
        }
    }
}