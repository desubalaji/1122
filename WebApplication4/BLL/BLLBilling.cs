using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace WebApplication4.BLL
{
    public class BLLBilling
    {

        public void BLLbill()
        {
            DAL.DALBilling bill = new DAL.DALBilling();
            bill.Dalbill();
        }
        public DataTable Generatebill()
        {
            DAL.DALBilling gen = new DAL.DALBilling();
            DataTable g = gen.DALGenerate();
            return g;

        }
        public DataTable Refresh()
        {
            DAL.DALBilling gen = new DAL.DALBilling();

            DataTable g = gen.DALRefresh();
            return g;


        }
        public DataTable billing(string Medid, string id)
        {
            DAL.DALBilling bill = new DAL.DALBilling();
            DataTable b = bill.updatebill(Medid, id);
            return b;
            //DataTable c = bill.DALDrug();
            //return c;
        }

        public DataTable bill()
        {
            DAL.DALBilling v = new DAL.DALBilling();
            DataTable b = v.DALDrug();
            return b;



        }
    }
}