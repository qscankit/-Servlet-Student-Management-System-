package com.ty.student_management_project.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import com.ty.student_management_project.dto.Accountant;

public class AccountantDao {

	EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("Ankit");
	EntityManager entityManager = entityManagerFactory.createEntityManager();
	EntityTransaction entityTransaction = entityManager.getTransaction();
	
//	insert method for accountant
	
	public void insertAccountant(Accountant accountant) {
		entityTransaction.begin();
		entityManager.persist(accountant);
		entityTransaction.commit();
		
		System.out.println("Data Inserted..");
	}
	
//	getByIdEmail method
	
	public boolean getByEmail(String email) {
		
		Accountant accountant = entityManager.find(Accountant.class, email);
		
		if(accountant!=null) {
			return true;
		}else {
			return false;
		}
	}
	
//	getByEmailAll method
	
	public Accountant getByEmailAll(String email){
		Accountant accountant = entityManager.find(Accountant.class, email);
		if(accountant!=null) {
			return accountant;			
		}else {
			return null;
		}
	}
	
//	display method
	public List<Accountant> displayAccountant(){
		String display="Select a from Accountant a";
		return entityManager.createQuery(display,Accountant.class).getResultList();
	}
	
	
}
