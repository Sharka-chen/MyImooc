package utils;
/**专门的连接数据库和关闭数据库*/

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class UsersTool {

	/**连接数据库 返回值*/
	public Connection getConnection() throws ClassNotFoundException, SQLException{
		/**连接驱动*/
		Class.forName("com.mysql.jdbc.Driver");
		/**Connection connection 确定所用数据库的地址*/
		String url = "jdbc:mysql://localhost:3306/test?useUnicode=true&characterEncoding=UTF-8";
		Connection connection = DriverManager.getConnection(url, "root", "201014");
		/**返回connection值，便于在其他类调用*/
		return connection;
	}
	
	
	/**关闭数据库  void方法 传入相关的参数*/
	public void closeConnection(Connection connection, PreparedStatement ps, ResultSet rs) throws SQLException{
		if (connection !=null) {
			connection.close();
		}
		if (ps !=null){
			ps.close();
		}
		if (rs !=null) {
			rs.close();
		}
	}
}
