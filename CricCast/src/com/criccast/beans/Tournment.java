package com.criccast.beans;

// Generated May 20, 2014 1:17:02 PM by Hibernate Tools 3.4.0.CR1

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Tournment generated by hbm2java
 */
@Entity
@Table(name = "tournment", catalog = "criccast")
public class Tournment implements java.io.Serializable {

	private int id;
	private String name;
	private String noOfMatches;

	public Tournment() {
	}

	public Tournment(int id) {
		this.id = id;
	}

	public Tournment(int id, String name, String noOfMatches) {
		this.id = id;
		this.name = name;
		this.noOfMatches = noOfMatches;
	}

	@Id
	@Column(name = "id", unique = true, nullable = false)
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "name", length = 45)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "noOfMatches", length = 45)
	public String getNoOfMatches() {
		return this.noOfMatches;
	}

	public void setNoOfMatches(String noOfMatches) {
		this.noOfMatches = noOfMatches;
	}

}
