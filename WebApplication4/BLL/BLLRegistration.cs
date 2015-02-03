using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication4.BLL
{
    public class BLLRegistration
    {
        public bool enterdetails(string fname, string lname, string gender, string dob, string designation, string mobile,string sques,string ans, string uname, string pwd, string cpwd)
        {
            bool abc;
            DAL.DALRegistration regdal = new DAL.DALRegistration();
            abc = regdal.insert(fname, lname, gender, dob, designation, mobile,sques,ans, uname, pwd, cpwd);
            return abc;
        }
    }
}