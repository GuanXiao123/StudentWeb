package com.gaoxin;

public class DBTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Student stu = new Student();
//		stu.setId(2);
		stu.setName("��");
		stu.setGender("Ů");
		stu.setDept("���");
//		stu.setClassNo(2012);
		
		
		UserOperate uso = new UserOperate();
		uso.addStu(stu);
	}

}
