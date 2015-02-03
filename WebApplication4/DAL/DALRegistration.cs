using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;


namespace WebApplication4.DAL
{
    public class DALRegistration
    {
        SqlCommand cmd;
        SqlConnection myConnection;
        SqlDataAdapter da;
        DataSet ds;

        string myString;


        public DALRegistration()
        {
            myString = @"Data Source = 172.16.153.100\MSQLSERVER2008R2; Initial Catalog = AarogyaPharmacy; Persist Security Info = false; User ID = sa; Password = satyam123$";
            myConnection = new SqlConnection(myString);
        }


        public bool insert(string fname, string lname, string gender, string dob, string designation, string mobile,string sques,string ans, string uname, string pwd, string cpwd)
        {
            try
            {
                da = new SqlDataAdapter();
                SqlCommand cmd = myConnection.CreateCommand();
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.CommandText = "Aarogya_regis";
                da.SelectCommand = cmd;
                cmd.Parameters.Add(new SqlParameter("@fname", SqlDbType.VarChar, 100, "fname"));
                cmd.Parameters.Add(new SqlParameter("@lname", SqlDbType.VarChar, 100, "lname"));
                cmd.Parameters.Add(new SqlParameter("@gender", SqlDbType.VarChar, 20, "gender"));
                cmd.Parameters.Add(new SqlParameter("@dob", SqlDbType.VarChar, 50, "dob"));
                cmd.Parameters.Add(new SqlParameter("@role", SqlDbType.VarChar, 30, "designation"));
                cmd.Parameters.Add(new SqlParameter("@mob", SqlDbType.VarChar, 15, "mobile"));
                cmd.Parameters.Add(new SqlParameter("@sques", SqlDbType.VarChar, 50, "sques"));
                cmd.Parameters.Add(new SqlParameter("@ans", SqlDbType.VarChar, 50, "ans"));
                cmd.Parameters.Add(new SqlParameter("@uid", SqlDbType.VarChar, 30, "uname"));
                cmd.Parameters.Add(new SqlParameter("@pwd", SqlDbType.VarChar, 50, "pwd"));
                cmd.Parameters.Add(new SqlParameter("@cpwd", SqlDbType.VarChar, 50, "cpwd"));



                cmd.Parameters[0].Value = fname;
                cmd.Parameters[1].Value = lname;
                cmd.Parameters[2].Value = gender;
                cmd.Parameters[3].Value = dob;
                cmd.Parameters[4].Value = designation;
                cmd.Parameters[5].Value = mobile;
                cmd.Parameters[6].Value = sques;
                cmd.Parameters[7].Value = ans;
                cmd.Parameters[8].Value = uname;
                cmd.Parameters[9].Value = pwd;
                cmd.Parameters[10].Value = cpwd;



                ds = new DataSet();
                da.Fill(ds, "Aarogya_Reg");
                return true;
            }
            catch (Exception e)
            {
                return false;
            }

        }
    }
}