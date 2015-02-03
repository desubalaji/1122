using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace WebApplication4.BLL
{
    public class BLLSales
    {
         public DataTable Report()
        {
            DAL.DALSales gen = new DAL.DALSales();
          
            DataTable g = gen.DALRefresh();
            return g;


        }
    }
    }
