package com.criccast.beans;

// Generated May 20, 2014 1:17:02 PM by Hibernate Tools 3.4.0.CR1

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Statistics generated by hbm2java
 */
@Entity
@Table(name = "statistics", catalog = "criccast")
public class Statistics implements java.io.Serializable {

	private int id;
	private Integer playerId;
	private String score;
	private String wickets;

	public Statistics() {
	}

	public Statistics(int id) {
		this.id = id;
	}

	public Statistics(int id, Integer playerId, String score, String wickets) {
		this.id = id;
		this.playerId = playerId;
		this.score = score;
		this.wickets = wickets;
	}

	@Id
	@Column(name = "id", unique = true, nullable = false)
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "playerID")
	public Integer getPlayerId() {
		return this.playerId;
	}

	public void setPlayerId(Integer playerId) {
		this.playerId = playerId;
	}

	@Column(name = "score", length = 45)
	public String getScore() {
		return this.score;
	}

	public void setScore(String score) {
		this.score = score;
	}

	@Column(name = "wickets", length = 45)
	public String getWickets() {
		return this.wickets;
	}

	public void setWickets(String wickets) {
		this.wickets = wickets;
	}

}
