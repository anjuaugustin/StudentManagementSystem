package com.qburst.sms.domain;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.NamedQuery;
import javax.persistence.Table;

@NamedQuery(name = "Faculty.getSearchedFaculty", query = "SELECT ai FROM Faculty ai "
		+ "WHERE ai.facultyName = :facultyName")
@Entity
@Table(name = "Faculty")
public class Faculty implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public int id;
	private int facultyID;
	private String facultyName;
	private Date dateOfBirth;
	private String place;
	private int yearsOfExperience;
	private String specialisation;
	private String educationalQualification;
	private int contactNumber;
	private String address;
	private byte[] facultyPhoto;

	public byte[] getFacultyPhoto() {
		return facultyPhoto;
	}

	public void setFacultyPhoto(byte[] facultyPhoto) {
		this.facultyPhoto = facultyPhoto;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getFacultyID() {
		return facultyID;
	}

	public void setFacultyID(int facultyID) {
		this.facultyID = facultyID;
	}

	public String getFacultyName() {
		return facultyName;
	}

	public void setFacultyName(String facultyName) {
		this.facultyName = facultyName;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public int getYearsOfExperience() {
		return yearsOfExperience;
	}

	public void setYearsOfExperience(int yearsOfExperience) {
		this.yearsOfExperience = yearsOfExperience;
	}

	public String getSpecialisation() {
		return specialisation;
	}

	public void setSpecialisation(String specialisation) {
		this.specialisation = specialisation;
	}

	public String getEducationalQualification() {
		return educationalQualification;
	}

	public void setEducationalQualification(String educationalQualification) {
		this.educationalQualification = educationalQualification;
	}

	public int getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(int contactNumber) {
		this.contactNumber = contactNumber;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "Faculty [id=" + id + ",facultyName=" + facultyName
				+ ", facultyID=" + facultyID + ",dateOfBirth=" + dateOfBirth
				+ ", place=" + place + ",yearsOfExperience="
				+ yearsOfExperience + ",specialisation=" + specialisation
				+ ", educationalQualification =" + educationalQualification
				+ ",contactNumber=" + contactNumber + ",address=" + address
				+ "]";
	}

}