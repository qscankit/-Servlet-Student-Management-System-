package com.ty.student_management_project.service;

import java.util.List;

import com.ty.student_management_project.dao.StudentDao;
import com.ty.student_management_project.dto.Student;

public class StudentService {
	
	StudentDao dao = new StudentDao();
//	insert Student
	public void insertStudent(Student student) {
		dao.insertStudent(student);
	}
	
//	getByAll Method
	
	public Student getByAll(int roll) {
		return dao.getByAll(roll);
	}
	
//	update student
	
	public void updateStudent(int roll, Student student) {
		dao.updateStudent(roll, student);
	}
	
//	display Method
	public List<Student> dispalyStudent(){
		return dao.dispalyStudent();
	}
	
//	delete Method
	public void deleteStudent(int roll) {
		dao.deleteStudent(roll);
	}

}
