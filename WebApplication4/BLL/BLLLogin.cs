using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication4.BLL
{
    public class BLLLogin
    {
        public string Role(string u, String p)
        {
            DAL.DALLogin l = new DAL.DALLogin();
            string result = l.Login(u, p);
            return result;
        }
    }
}