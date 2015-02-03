using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace WebApplication4.BLL
{
    public class BLLAvailable
    {
        public DataTable Available()
        {
            DAL.DALAvailable gen = new DAL.DALAvailable();

            DataTable g = gen.DAvailable();
            return g;


        }
    }
}