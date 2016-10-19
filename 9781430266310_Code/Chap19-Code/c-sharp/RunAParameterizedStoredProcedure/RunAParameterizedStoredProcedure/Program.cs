using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace RunAParameterizedStoredProcedure
{
    class Program
    {
        static void Main(string[] args)
        {
            string clearedBalance = "";
            string unClearedBalance = "";
            string returnValue = "";
            try
            {
                string connectionString = @"Server=FAT-BELLY-Sony\APRESS_DEV1;" +
                                "Database=ApressFinancial;Trusted_Connection=True;";
                SqlConnection databaseConnection = new SqlConnection(connectionString);
                databaseConnection.Open();
                SqlCommand tsqlCommand = new
SqlCommand("CustomerDetails.apf_CustBalance", databaseConnection);

                tsqlCommand.CommandType = CommandType.StoredProcedure;
                tsqlCommand.Parameters.Add("ReturnValue", SqlDbType.Int);
                tsqlCommand.Parameters[0].Direction = ParameterDirection.ReturnValue;
                tsqlCommand.Parameters.Add("@CustomerId", SqlDbType.Int);
                tsqlCommand.Parameters[1].Direction = ParameterDirection.Input;
                tsqlCommand.Parameters[1].Value = 2;
                tsqlCommand.Parameters.Add("@ClearedBalance", SqlDbType.Money);
                tsqlCommand.Parameters[2].Direction = ParameterDirection.Output;
                tsqlCommand.Parameters.Add("@UnclearedBalance", SqlDbType.Money);
                tsqlCommand.Parameters[3].Direction = ParameterDirection.Output;
                tsqlCommand.ExecuteNonQuery(); clearedBalance = tsqlCommand.Parameters[2].Value ==
DBNull.Value ? "NULL" : tsqlCommand.Parameters[2].Value.ToString();
                unClearedBalance = tsqlCommand.Parameters[3].Value ==
DBNull.Value ? "NULL" : tsqlCommand.Parameters[3].Value.ToString();
                returnValue = tsqlCommand.Parameters[0].Value ==
DBNull.Value ? "NULL" : tsqlCommand.Parameters[0].Value.ToString();
                databaseConnection.Close();
            }
            catch (Exception exc)
            {
                Console.WriteLine("Problems running the T-SQL" + exc.Message);
            }
            Console.WriteLine("The return values are " +
                "Cleared Balance = " + clearedBalance +
                " Uncleared Balance = " + unClearedBalance +
                " Returned Value = " + returnValue);
            Console.WriteLine("Press <ENTER> to finish....");
            Console.ReadLine();
        }
    }
}
