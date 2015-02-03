using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace WebApplication4.BLL
{
    public class BLLOutstock
    {
        public DataTable Outstock()
        {
            DAL.DAOutstock stock = new DAL.DAOutstock();

            DataTable g = stock.DALout();
            return g;

        }
    }
}