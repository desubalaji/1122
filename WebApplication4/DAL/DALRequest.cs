using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace WebApplication4.DAL
{
    public class DALRequest
    {
         SqlCommand cmd;
        SqlConnection myConnection;
        SqlDataAdapter da;
        DataSet ds;

        string myString;


        public DALRequest()
        {
           
            myString = @"Data Source = 172.16.153.100\MSQLSERVER2008R2; Initial Catalog = AarogyaPharmacy; Persist Security Info = false; User ID = sa; Password = satyam123$";
            myConnection = new SqlConnection(myString);
        }


        public void Dalrequest(string Medname, string Quant, string status)
        {
            int quantity = Convert.ToInt32(Quant);
            da = new SqlDataAdapter();
            SqlCommand cmd = myConnection.CreateCommand();
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.CommandText = "Request";
            da.SelectCommand = cmd;
            cmd.Parameters.Add(new SqlParameter("@MedicineName", SqlDbType.VarChar, 100, "Medname"));
            cmd.Parameters.Add(new SqlParameter("@Quantity", SqlDbType.Int,30, "quantity"));
            cmd.Parameters.Add(new SqlParameter("@Urgency", SqlDbType.VarChar, 20, "status"));
             cmd.Parameters[0].Value = Medname;
            cmd.Parameters[1].Value = quantity;
            cmd.Parameters[2].Value = status;
             ds = new DataSet();
            da.Fill(ds, "RequestMedicines");
            //return true;
        }
        public void DalMedicines(string Medid, string Medname, string quant, string price)
        {
             int quantity = Convert.ToInt32(quant);
            float Price=float.Parse(price);
            da = new SqlDataAdapter();
            SqlCommand cmd = myConnection.CreateCommand();
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.CommandText = "Medicines";
            da.SelectCommand = cmd;
            cmd.Parameters.Add(new SqlParameter("@Medicineid", SqlDbType.VarChar, 100, "Medid"));
            cmd.Parameters.Add(new SqlParameter("@MedicineName", SqlDbType.VarChar, 150, "Medname"));
            cmd.Parameters.Add(new SqlParameter("@Quantity", SqlDbType.Int, 30, "quantity"));
              cmd.Parameters.Add(new SqlParameter("@Price", SqlDbType.VarChar, 20, "Price"));
             cmd.Parameters[0].Value = Medid;
            cmd.Parameters[1].Value = Medname;
            cmd.Parameters[2].Value = quantity;
            
             cmd.Parameters[3].Value = Price;
             ds = new DataSet();
             da.Fill(ds, "MedicinesList");
             //string r = (string)cmd.ExecuteScalar();
             //if (r == Medid)
             //{
             //    MessageBox.Show("enter different Medicine Id");
             //}

             //return r;
             
        }
    }
}