package com.criccast.beans;

// Generated May 20, 2014 1:17:02 PM by Hibernate Tools 3.4.0.CR1

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Player generated by hbm2java
 */
@Entity
@Table(name = "player", catalog = "criccast")
public class Player implements java.io.Serializable {

	private int id;
	private String playerName;
	private String playerAge;
	private Date playerDob;
	private Integer teamId;

	public Player() {
	}

	public Player(int id) {
		this.id = id;
	}

	public Player(int id, String playerName, String playerAge, Date playerDob,
			Integer teamId) {
		this.id = id;
		this.playerName = playerName;
		this.playerAge = playerAge;
		this.playerDob = playerDob;
		this.teamId = teamId;
	}

	@Id
	@Column(name = "id", unique = true, nullable = false)
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "playerName", length = 45)
	public String getPlayerName() {
		return this.playerName;
	}

	public void setPlayerName(String playerName) {
		this.playerName = playerName;
	}

	@Column(name = "playerAge", length = 45)
	public String getPlayerAge() {
		return this.playerAge;
	}

	public void setPlayerAge(String playerAge) {
		this.playerAge = playerAge;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "playerDob", length = 0)
	public Date getPlayerDob() {
		return this.playerDob;
	}

	public void setPlayerDob(Date playerDob) {
		this.playerDob = playerDob;
	}

	@Column(name = "teamId")
	public Integer getTeamId() {
		return this.teamId;
	}

	public void setTeamId(Integer teamId) {
		this.teamId = teamId;
	}

}