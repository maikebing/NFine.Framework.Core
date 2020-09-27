﻿
using System.Configuration;
using System.Data;
using System.Data.Common;
using NFine.Code;

namespace NFine.Data.Extensions
{
    public class DbHelper
    {
        private static DbProviderFactory Factory = MySql.Data.MySqlClient.MySqlClientFactory.Instance;
        private static string connstring = System.Configuration.ConfigurationManager.ConnectionStrings["NFineDbContext"].ToString();  //ConfigurationManager.ConnectionStrings["NFineDbContext"].ConnectionString;
        public static int ExecuteSqlCommand(string cmdText)
        {
            using (DbConnection conn = Factory.CreateConnection())
            {
                conn.ConnectionString = connstring;
                DbCommand cmd = conn.CreateCommand();
                PrepareCommand(cmd, conn, null, CommandType.Text, cmdText, null);
                return cmd.ExecuteNonQuery();
            }
        }
        private static void PrepareCommand(DbCommand cmd, DbConnection conn, DbTransaction isOpenTrans, CommandType cmdType, string cmdText, DbParameter[] cmdParms)
        {
            if (conn.State != ConnectionState.Open)
                conn.Open();
            cmd.Connection = conn;
            cmd.CommandText = cmdText;
            if (isOpenTrans != null)
                cmd.Transaction = isOpenTrans;
            cmd.CommandType = cmdType;
            if (cmdParms != null)
            {
                cmd.Parameters.AddRange(cmdParms);
            }
        }
    }
}
