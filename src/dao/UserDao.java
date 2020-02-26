package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import domain.LogingUser;
import utils.UsersTool;

public class UserDao {
	
	/***传入LogingUser内的参数实现登录验证*/
	/**
	 查询数据库，
	1.有该记录则进入密码验证的步骤，无记录则显示“该用户不存在”
	2.进行密码验证，确定密码正确则跳转用户页面，密码不正确则显示“用户密码不正确，请重新填写”
	*/
	public String getMatch(LogingUser logingUser) throws SQLException, ClassNotFoundException{
		/**引入UserTool类，使用getconnection()方法，获得返回的connection值*/
		UsersTool usersTool = new UsersTool();
		Connection connection = usersTool.getConnection();
		
		/**写SQL语句，进行预编译*/
		String sql1 = "select * from myimoocusers where useremail ='" +logingUser.getUseremail() + "'";
		PreparedStatement ps = connection.prepareStatement(sql1);
		ResultSet rs = ps.executeQuery();
		
		String password = logingUser.getUserpassword();
		/**进行用户邮箱的检验*/
		if (rs.next()) {
			String two = rs.getString(2);
			if (password.equals(two)) {
				password = "";
				
			} else {
				password = "用户密码不正确，请重新输入";
			}
		} else {
			password = "该用户不存在";
		}
		usersTool.closeConnection(connection, ps, rs);
		return password;
	}
	
	
	/***传入LogingUser内的参数实现登录验证*/
	/**1.查询数据库，验证该注册邮箱是否存在，不存在则插入表，更新数据库，若是存在则返回值“该邮箱已注册账号，请重新选择邮箱”*/
	public String getTest(LogingUser logingUser) throws ClassNotFoundException, SQLException{
		/**引入UserTool类，使用getconnection()方法，获得返回的connection值*/
		UsersTool usersTool = new UsersTool();
		Connection connection = usersTool.getConnection();
		
		/**写查询SQL语句，进行预编译*/
		String sql2 = "select * from myimoocusers where useremail ='" +logingUser.getUseremail() + "'";
		PreparedStatement ps = connection.prepareStatement(sql2);
		ResultSet rs = ps.executeQuery();
		
		String useremail = logingUser.getUseremail();
		if (rs.next()) {
			useremail = "该邮箱已注册账号，请重新选择邮箱";
			
		} else {
			String sql3 = "insert myimoocusers(useremail, userpassword) values(?, ?)";
			PreparedStatement pStatement = connection.prepareStatement(sql3);
			pStatement.setString(1, logingUser.getUseremail());
			pStatement.setString(2, logingUser.getUserpassword());
			int i = pStatement.executeUpdate();
			if (i>0) {
				useremail = "";
			} else {
				useremail = "抱歉，您注册失败";
			}
			usersTool.closeConnection(connection, pStatement, rs);
		}
		usersTool.closeConnection(connection, ps, rs);
		return useremail;
	}
	
}
