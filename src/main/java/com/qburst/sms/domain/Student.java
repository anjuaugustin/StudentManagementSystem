package com.qburst.sms.domain;

import java.io.Serializable;
import java.sql.Date;

import javax.jdo.annotations.Column;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Version;
@NamedQueries({@NamedQuery(name = "Student.getProfileInfo", query = "SELECT st FROM Student st "
				+ "WHERE st.username = :username"), @NamedQuery(name = "Student.uploadImageOnId", query = "UPDATE Student stu SET stu.images= :images WHERE stu.username= :username" )})
				
@Entity
@Table(name = "Student")


public class Student implements Serializable{

	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="manual_id")
	private int id;
	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}

	private String username;

	
	private int studentID;
	
	
	private String fathersName;
	private String fathersJob;
	
	private int classroom;
	private int rollNo;
	private String gender;
	
	private String email;
	
    private String permanentAddress;
	private Date dateOfBirth;
	
	private int mobileNumber;
	


	public String getFathersName() {
		return fathersName;
	}


	public void setFathersName(String fathersName) {
		this.fathersName = fathersName;
	}


	public String getFathersJob() {
		return fathersJob;
	}


	public void setFathersJob(String fathersJob) {
		this.fathersJob = fathersJob;
	}


	public int getClassroom() {
		return classroom;
	}


	public void setClassroom(int classroom) {
		this.classroom = classroom;
	}


	public int getRollNo() {
		return rollNo;
	}


	public void setRollNo(int rollNo) {
		this.rollNo = rollNo;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPermanentAddress() {
		return permanentAddress;
	}


	public void setPermanentAddress(String permanentAddress) {
		this.permanentAddress = permanentAddress;
	}


	public Date getDateOfBirth() {
		return dateOfBirth;
	}


	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}


	public int getMobileNumber() {
		return mobileNumber;
	}


	public void setMobileNumber(int mobileNumber) {
		this.mobileNumber = mobileNumber;
	}


	public int getStudentID() {
		return studentID;
	}


	public void setStudentID(int studentID) {
		this.studentID = studentID;
	}


	public String getUsername() {
		return username;
	}

	

	public void setUsername(String username) {
		this.username = username;
	}

	@Override
	public String toString() {
		return "Student [Image=" + images + "Username=" + username + ", father's name=" + fathersName + ",father's occupation=" + fathersJob+
				",Class=" + classroom + ",Roll Number=" + rollNo + ", Gender=" + gender + ",Email=" + email + ",Permanent Address" + permanentAddress + ",Date of Birth="
				+dateOfBirth + ",Mobile Number=" + mobileNumber +
				 ",StudentID=" + studentID +"]";
				 	
	}
}