using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace WebApplication4.DAL
{
    public class DALLogin
    {
        SqlCommand cmd;
        SqlConnection myConnection;

        SqlDataAdapter da;
        DataSet ds;
        string myString;
        String res;
        public DALLogin()
        {
            myString = @"Data Source = 172.16.153.100\MSQLSERVER2008R2; Initial Catalog = AarogyaPharmacy; Persist Security Info = false; User ID = sa; Password = satyam123$";
            myConnection = new SqlConnection(myString);

        }

        public string Login(string name, string pwd)
        {
            myConnection.Open();

            da = new SqlDataAdapter();
            SqlCommand cmd = myConnection.CreateCommand();
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@uid", SqlDbType.VarChar, 100, "name"));
            cmd.Parameters.Add(new SqlParameter("@pwd", SqlDbType.VarChar, 100, "pwd"));
            cmd.Parameters[0].Value = name;
            cmd.Parameters[1].Value = pwd;
            cmd.CommandText = "LoginRole";
            da.SelectCommand = cmd;
            string r = (string)cmd.ExecuteScalar();

            return r;


        }



    }
}