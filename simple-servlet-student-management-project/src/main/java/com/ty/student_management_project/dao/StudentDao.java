package com.ty.student_management_project.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import com.ty.student_management_project.dto.Student;

public class StudentDao {
	EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("Ankit");
	EntityManager entityManager = entityManagerFactory.createEntityManager();
	EntityTransaction entityTransaction = entityManager.getTransaction();
	
//	insert Student
	public void insertStudent(Student student) {
		entityTransaction.begin();
		entityManager.persist(student);
		entityTransaction.commit();
		
		System.out.println("Student Data Inserted..");
	}
	
//	getByAll Method
	public Student getByAll(int roll) {
		Student student =entityManager.find(Student.class, roll);
		if(student!=null) {
			return student;
		}else {
			
		}
		return null;
	}
	
//	update student
	public void updateStudent(int roll, Student student) {
		Student student1 =entityManager.find(Student.class, roll);
		if(student1!=null) {
				student1.setAddress(student.getAddress());
				student1.setCity(student.getCity());
				student1.setContact(student.getContact());
				student1.setCountry(student.getCountry());
				student1.setCourse(student.getCourse());
				student1.setDob(student.getDob());
				student1.setDue(student.getDue());
				student1.setEmail(student.getEmail());
				student1.setFee(student.getFee());
				student1.setName(student.getName());
				student1.setPaid(student.getPaid());
				student1.setPincode(student.getPincode());
				student1.setState(student.getState());
			
				entityTransaction.begin();
				entityManager.merge(student1);
				entityTransaction.commit();
				
				System.out.println("Data Updated");
			}else {
				System.out.println("Student roll no is not present..");
			}
	}
	
//	display Method
	public List<Student> dispalyStudent(){
		String display = "Select s from Student s";
		return entityManager.createQuery(display,Student.class).getResultList();
		
	}
	
//	delete Method
	public void deleteStudent(int roll) {

		Student student = entityManager.find(Student.class, roll);
		if(student!=null)
		entityTransaction.begin();
		entityManager.remove(student);
		entityTransaction.commit();
		
		System.out.println("Data Deleted..");
	}

}
