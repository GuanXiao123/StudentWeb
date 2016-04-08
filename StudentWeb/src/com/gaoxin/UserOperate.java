package com.gaoxin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;





public class UserOperate {
	
	DBManage dbManage = new DBManage();
	Connection conn = dbManage.getConn();
	

	public void addStu(Student stu){			//增加用户操作
		
		
		try {
			Statement state = conn.createStatement();
			
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
			
			String sqlStr = "update stu_table set stu_id = '"	+stu.getId()+	"',name = '"+stu.getName() +"',gender = '"+stu.getGender() +"',class_no = '"+stu.getClassNo()+"',dept = '"+stu.getDept()+"' where stu_id ='"+id+"'";

			int number = state.executeUpdate(sqlStr);	//返回的是受影响的行数，只是测试用
			
			System.out.println(number);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			dbManage.closeConn();
		}
	}
	
	
	//showStu操作   显示所有用户信息   待续

	public Vector<Student> showStu(){
		Vector<Student> students = new Vector<Student>();
		try {
			Statement state = conn.createStatement();
			String sqlStr = "select * from stu_table";
			ResultSet rs = state.executeQuery(sqlStr);
			
			
			while(rs.next()){
				
				Student student =  new Student() ;
				
				
				student.setId(String.valueOf(rs.getInt("stu_id")));
				student.setName(rs.getString("name"));
				student.setGender(rs.getString("gender"));
				student.setClassNo(String.valueOf(rs.getInt("class_no")));
				student.setDept(rs.getString("dept"));
				
				students.add(student);
				
				
			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return students;
	
		
	}
	

}
