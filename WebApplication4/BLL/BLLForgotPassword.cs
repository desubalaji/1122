using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication4.BLL
{
    public class BLLForgotPassword
    {
        public  void passdetails(string u,string q, String a,String p)
        {
            DAL.DALForgetPassword fp = new DAL.DALForgetPassword();
          fp.Fpass(u,q,a,p);
            //return result;
        }
    }
}