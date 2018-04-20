using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WCF_Service.ENTITIES
{
    class sqlConnection
    {
        public SqlConnection m_sqlconnection = new SqlConnection();
        public string m_ConnectString = @"Data Source = DESKTOP-K6A8ECB\SQLEXPRESS; Initial Catalog = sinhvien; Integrated Security = True";
        public sqlConnection()
        {
            m_sqlconnection = new SqlConnection();
            m_sqlconnection.ConnectionString = m_ConnectString;
            m_sqlconnection.Open();
        }
        public DataTable getData(string proc, string que)
        {
            DataTable dt = new DataTable("test");
            SqlCommand cmd = new SqlCommand(proc, m_sqlconnection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@que", SqlDbType.NVarChar).Value = que;
            SqlDataReader dr = cmd.ExecuteReader();
            dt.Load(dr);
            return dt;
        }
        public DataTable getData2(string proc)
        {
            DataTable dt = new DataTable("test");
            SqlCommand cmd = new SqlCommand(proc, m_sqlconnection);
            cmd.CommandType = CommandType.StoredProcedure;
            
            SqlDataAdapter ada = new SqlDataAdapter(cmd);
            
            ada.Fill(dt);
            return dt;
        }
    }
}