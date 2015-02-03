using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace WebApplication4.DAL
{
    public class DALForgetPassword
    {
        SqlCommand cmd;
        SqlConnection myConnection;

        SqlDataAdapter da;
        DataSet ds;
        string myString;
        String res;
        public DALForgetPassword()
        {
            myString = @"Data Source = 172.16.153.100\MSQLSERVER2008R2; Initial Catalog = AarogyaPharmacy; Persist Security Info = false; User ID = sa; Password = satyam123$";
            myConnection = new SqlConnection(myString);

        }

        public void Fpass(string name,string ques,string ans,string npass)
        {
            myConnection.Open();

            da = new SqlDataAdapter();
            SqlCommand cmd = myConnection.CreateCommand();
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@uname", SqlDbType.VarChar, 100, "name"));
            cmd.Parameters.Add(new SqlParameter("@Ques", SqlDbType.VarChar, 100, "ques"));
            cmd.Parameters.Add(new SqlParameter("@ans", SqlDbType.VarChar, 100, "ans"));
            cmd.Parameters.Add(new SqlParameter("@npass", SqlDbType.VarChar, 100, "npass"));

            cmd.Parameters[0].Value = name;
            cmd.Parameters[1].Value = ques;
            cmd.Parameters[2].Value = ans;
            cmd.Parameters[3].Value = npass;

            cmd.CommandText = "forget";
            da.SelectCommand = cmd;
            string r = (string)cmd.ExecuteScalar();

            

        }
    }
}