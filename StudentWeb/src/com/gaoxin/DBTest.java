package com.gaoxin;

import java.util.Vector;

public class DBTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
	
		
		
		UserOperate uo = new UserOperate();
		Vector<Student> students =uo.showStu();
		Student student = new Student();
		for(int i=0;i<students.size();i++){
			student = (Student)students.get(i);
		}
		System.out.println(student.getId());
	}
}
