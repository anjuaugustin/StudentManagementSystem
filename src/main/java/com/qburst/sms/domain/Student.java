package com.qburst.sms.domain;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Student")
public class Student implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private int studentID;
	private int aggregate;
	private String stream;
	private String name;
	private String password;
	
	

	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public int getStudentID() {
		return studentID;
	}


	public void setStudentID(int studentID) {
		this.studentID = studentID;
	}


	public String getName() {
		return name;
	}

	

	public void setName(String name) {
		this.name = name;
	}

	public int getAggregate() {
		return aggregate;
	}

	public String getStream() {
		return stream;
	}

	public void setAggregate(int aggregate) {
		this.aggregate = aggregate;
	}

	public void setStream(String stream) {
		this.stream = stream;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Student [Username=" + name + ", password=" + password +", marks="+ aggregate + ",stream="+ stream +
				 ",StudentID=" + studentID +",ID =" +id+"]";
	}
}