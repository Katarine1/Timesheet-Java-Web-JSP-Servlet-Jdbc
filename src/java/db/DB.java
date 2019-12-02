package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DB {

	private static Connection conn = null;
        
	public static Connection getConnection() {
		if(conn == null) {
                    try {
                        String url = "jdbc:mysql://localhost:3306/timesheet2";
                        String user = "desenvolvedor";
                        String password = "1234";
                        Class.forName("com.mysql.jdbc.Driver");
                        conn = DriverManager.getConnection(url, user, password);
                    }                        
                    catch(SQLException e) {
                            throw new DbException(e.getMessage());
                    }
                    catch(ClassNotFoundException e){
                         throw new DbException(e.getMessage());
                    }
		}
		return conn;		
	}
	
	public static void closeStatement(Statement st) {
		if(st == null) {
			try {
				st.close();
			}
			catch(SQLException e) {
				throw new DbException(e.getMessage());
			}
		}
	}
	
	public static void closeResultSet(ResultSet rs) {
		if(rs == null) {
			try {
				rs.close();
			}
			catch(SQLException e) {
				throw new DbException(e.getMessage());
			}
		}
	}
}
