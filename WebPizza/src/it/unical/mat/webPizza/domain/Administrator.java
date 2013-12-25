package it.unical.mat.webPizza.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ADMIN")
public class Administrator {
	
	@Id
	@GeneratedValue
	@Column(name="ADMIN_ID")
	private Long id;
	
	@Column(name="ADMIN_NAME")
	private String name;
	
	@Column(name="ADMIN_SURNAME")
	private String surname;
	
	@Column(name="ADMIN_USER")
	private String username;
	
	@Column(name="ADMIN_HPWD")
	private String hashPasswd;
	
	public Administrator() {
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getHashPasswd() {
		return hashPasswd;
	}

	public void setHashPasswd(String hashPasswd) {
		this.hashPasswd = hashPasswd;
	}

	
}
