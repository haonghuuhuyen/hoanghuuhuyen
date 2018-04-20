using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using WCF_Service.ENTITIES;

namespace WCF_Service.Service
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "SinhVien" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select SinhVien.svc or SinhVien.svc.cs at the Solution Explorer and start debugging.
    public class SinhVien : ISinhVien
    {
        public DataTable getData(string proc, string param)
        {
            DataTable dt = new DataTable("test");
            sqlConnection sql = new sqlConnection();
            dt = sql.getData(proc, param);
            return dt;
        }

        public DataTable getData2(string proc)
        {
            DataTable dt = new DataTable("test");
            sqlConnection sql = new sqlConnection();
            dt = sql.getData2(proc);
            return dt;
        }
    }
}
