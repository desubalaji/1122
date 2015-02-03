using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication4.BLL
{
    public class BLLRequest
    {
        public void Request(string Medname, string Quant, string status)
        {
            DAL.DALRequest insert = new DAL.DALRequest();
            insert.Dalrequest(Medname, Quant, status);
        }
        public void Medicines(string Medid, string Medname, string quant, string price)
        {
            DAL.DALRequest insert = new DAL.DALRequest();
            insert.DalMedicines(Medid, Medname, quant, price);





        }
    }
}