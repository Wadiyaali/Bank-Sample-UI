using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace assignment
{
    public class Connection
    {
        public string conn = ConfigurationManager.ConnectionStrings["strs"].ConnectionString;
      
    }
}