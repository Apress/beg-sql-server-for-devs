import java.sql.*;
public class main {
    /**
    * @param args
    */
    public static void main(String[] args) {
        // TODO Auto-generated method stub

        ResultSet returnedData = null;
        Connection databaseConnection = null;
        PreparedStatement prepStatement = null;
        try {
        	String connString = "jdbc:sqlserver://FAT-BELLY-Sony\\" +
        	    "APRESS_DEV1;databaseName=ApressFinancial;" +
        	    "integratedSecurity=true";
        	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        	databaseConnection = DriverManager.getConnection(connString);
        	
        	String sqlToExecute = "CustomerDetails.apf_CustClearedBalance ?";
        	
        	prepStatement = databaseConnection.prepareStatement(sqlToExecute);
        	
        	prepStatement.setInt(1, 2);
        	
        	returnedData = prepStatement.executeQuery();
        	while (returnedData.next()) {
        	    System.out.println("The return value was " + returnedData.getString(1));
        	}
    	}
    	catch (Exception e) {
    	    e.printStackTrace();
    	}
    	finally {
    	    if (returnedData != null) 
    	    try { 
    	        returnedData.close(); 
    	    } 
    	    catch(Exception e) {}
    	    
    	    if (prepStatement != null) 
    	    try { 
    	        prepStatement.close(); 
    	    } 
    	    catch(Exception e) {}
    	    if (databaseConnection != null) 
    	    try { 
    	        databaseConnection.close(); 
    	    } 
    	    catch(Exception e) {}
    	}

	}

}
