package com.gaoxin;

import java.sql.Connection;
import java.sql.PreparedStatement;

import java.sql.SQLException;
import java.sql.Statement;





public class UserOperate {
	
	DBManage dbManage = new DBManage();
	Connection conn = dbManage.getConn();
	

	public void addStu(Student stu){			//增加用户操作
		
		
		try {
			Statement state = conn.createStatement();
			
//			String sqlStr = "insert into stu_table values(6,'stu.getId()','女','2032','经管')";		
			String sqlStr = "insert into stu_table(stu_id,name,gender,class_no,dept) values('"		+stu.getId()+	"','"			+stu.getName()+		"','"		+stu.getGender()+"','"+stu.getClassNo()+"','"+stu.getDept()
			+"')            "     ;
			state.execute(sqlStr);
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally{
			
			dbManage.closeConn();
			
		}
		
		
		
	}
	
	public void deleteStu(String stu_id){			//删除操作
		
		
		try{
			
			String sqlStr = "delete from stu_table where stu_id = ?";
			try {
				PreparedStatement ps = conn.prepareStatement(sqlStr);
				ps.setString(1,stu_id);
				int number = ps.executeUpdate();
				
				if (number != 0) {
					System.out.println("删除成功");
				}
				
			}catch(Exception e){
				e.printStackTrace();
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			dbManage.closeConn();
		}
	}
	public void updateStu(Student stu,String id){			//修改操作
		try {
			Statement state = conn.createStatement();
			String sqlStr = "update stu_table set stu_id = '" + stu.getId() + "'name ='" + stu.getName() +"'gender = '" + stu.getGender()
					+"'class_no ='" + stu.getClassNo() + "'dept ='" + stu.getDept()+"'where stu_id =" + "'"+id +"'"; 
			int number = state.executeUpdate(sqlStr);
			
			System.out.println(number);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			dbManage.closeConn();
		}
		
		
		
	}

}
