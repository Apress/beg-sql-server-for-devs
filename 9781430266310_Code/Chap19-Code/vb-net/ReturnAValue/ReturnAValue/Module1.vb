Imports System.Data
Imports System.Data.SqlClient

Module Module1

    Sub Main(ByVal args() As String)
        If args.Length <> 1 Then
            Console.WriteLine("Invalid arguments. You only need 1 argument")
            Return
        End If

        Dim connectionString As String = _
        "Server=FAT-BELLY-Sony\APRESS_DEV1;" + _
        "Database=ApressFinancial;Trusted_Connection=True;"

        Dim databaseConnection As SqlConnection =
        New SqlConnection(connectionString)

        databaseConnection.Open()

        Dim tsqlCommand = New  _
        SqlCommand(args(0), databaseConnection)

        tsqlCommand.CommandType = CommandType.Text

        Dim returnedValue As Object = tsqlCommand.ExecuteScalar()

        If IsDBNull(returnedValue) Then
            returnedValue = "NULL"
        End If

        Console.WriteLine("The returned value is " + returnedValue.ToString())
        Console.WriteLine("Press <ENTER> to continue")
        Console.ReadLine()
        databaseConnection.Close()

    End Sub

End Module
