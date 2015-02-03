using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace WebApplication4.DAL
{
    public class DALBilling
    {
        SqlCommand cmd;
        SqlConnection myConnection;

        SqlDataAdapter da;
        DataSet ds;
        string myString;
        String res;
        public DALBilling()
        {
            myString = @"Data Source = 172.16.153.100\MSQLSERVER2008R2; Initial Catalog = AarogyaPharmacy; Persist Security Info = false; User ID = sa; Password = satyam123$";
            myConnection = new SqlConnection(myString);

        }
        public void Dalbill()
        {
            da = new SqlDataAdapter();
            SqlCommand cmd = myConnection.CreateCommand();
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.CommandText = "bill1234";
            da.SelectCommand = cmd;
            //cmd.Parameters.Add(new SqlParameter("@id", SqlDbType.VarChar, 100, "medid"));
            //cmd.Parameters.Add(new SqlParameter("@Quantity", SqlDbType.VarChar, 100, "quat"));




            //cmd.Parameters[0].Value = medid;
            //cmd.Parameters[1].Value = quat;



            ds = new DataSet();
            da.Fill(ds, "BillDetails");

        }
        public DataTable DALGenerate()
        {
            da = new SqlDataAdapter();
            SqlCommand cmd = myConnection.CreateCommand();
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.CommandText = "trunck";
            da.SelectCommand = cmd;
            ds = new DataSet();
            da.Fill(ds, "BillDetails");
            DataTable dt = ds.Tables["BillDetails"];

            return dt;

        }
        public DataTable DALRefresh()
        {
            da = new SqlDataAdapter();
            cmd = myConnection.CreateCommand();
            cmd.CommandText = "Truncate table BillDetails";
            da.SelectCommand = cmd;
            ds = new DataSet();
            da.Fill(ds, "BillDetails");
            DataTable dt = ds.Tables["BillDetails"];

            return dt;

        }
        public DataTable DALDrug()
        {
            da = new SqlDataAdapter();
            SqlCommand cmd = myConnection.CreateCommand();
            cmd.CommandText = "select * from MedList";
            da.SelectCommand = cmd;
            ds = new DataSet();
            da.Fill(ds, "MedList");
            DataTable dt = ds.Tables["MedList"];

            return dt;
        }
        public DataTable updatebill(string Medid,string id)
        {
            da = new SqlDataAdapter();
            cmd = myConnection.CreateCommand();
            cmd.CommandText = "update MedList set Quatity= '" + id + "' where MedicineId='"+Medid+"'";
            da.SelectCommand = cmd;
            ds = new DataSet();
           da.Fill(ds, "MedList");
           DataTable dt = ds.Tables["MedList"];
           return dt;


        }
    }
}