﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace WebApplication4.DAL
{
    public class DALAvailable
    {
         SqlCommand cmd;
        SqlConnection myConnection;

        SqlDataAdapter da;
        DataSet ds;
        string myString;
        String res;

        public DALAvailable()
        {
            myString = @"Data Source = 172.16.153.100\MSQLSERVER2008R2; Initial Catalog = AarogyaPharmacy; Persist Security Info = false; User ID = sa; Password = satyam123$";
            myConnection = new SqlConnection(myString);
        }
        public DataTable DAvailable()
        {
            da = new SqlDataAdapter();
            SqlCommand cmd = myConnection.CreateCommand();
            cmd.CommandText = "select * from MedicinesList where Quantity>0 ";
            da.SelectCommand = cmd;
            ds = new DataSet();
            da.Fill(ds, "MedicinesList");
            DataTable dt = ds.Tables["MedicinesList"];

            return dt;
        }
    }
}