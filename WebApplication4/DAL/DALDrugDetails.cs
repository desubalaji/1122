using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;


namespace WebApplication4.DAL
{
    public class DALDrugDetails
    {
        SqlCommand cmd;
        SqlConnection myConnection;

        SqlDataAdapter da;
        DataSet ds;
        string myString;
        String res;

        public DALDrugDetails()
        {
            myString = @"Data Source = 172.16.153.100\MSQLSERVER2008R2; Initial Catalog = AarogyaPharmacy; Persist Security Info = false; User ID = sa; Password = satyam123$";
            myConnection = new SqlConnection(myString);

        }
        public DataTable DALDrug()
        {
            da = new SqlDataAdapter();
            SqlCommand cmd = myConnection.CreateCommand();
            cmd.CommandText = "select * from MedicinesList";
            da.SelectCommand = cmd;
            ds = new DataSet();
            da.Fill(ds, "MedicinesList");
            DataTable dt = ds.Tables["MedicinesList"];

            return dt;
        }
        public void billing(int count,string mid, string mname, string quant, string price)
        {
            float Price = float.Parse(price);
            int Quant = Int32.Parse(quant);
            myConnection.Open();

            da = new SqlDataAdapter();
            SqlCommand cmd = myConnection.CreateCommand();
           
            cmd = new SqlCommand("AlternatemedList", myConnection);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            da.SelectCommand = cmd;

            cmd.Parameters.Add(new SqlParameter("@MedId", SqlDbType.VarChar, 100, "mid"));
            cmd.Parameters.Add(new SqlParameter("@Medname", SqlDbType.VarChar, 100, "mname"));
            cmd.Parameters.Add(new SqlParameter("@Quant", SqlDbType.VarChar, 20, "quant"));
            cmd.Parameters.Add(new SqlParameter("@Price", SqlDbType.VarChar, 50, "price"));
            cmd.Parameters.Add(new SqlParameter("@count", SqlDbType.Int, 100, "count"));


            cmd.Parameters[0].Value = mid;
            cmd.Parameters[1].Value = mname;
            cmd.Parameters[2].Value = quant;
            cmd.Parameters[3].Value = price;
            cmd.Parameters[4].Value = count;
            ds = new DataSet();
            da.Fill(ds);
           

        }
    }
}