package com.classpath.mvc.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
 
@Entity
@Table(name = "customers")
public class Customer implements Serializable {
 	private static final long serialVersionUID = -5943461472530543260L;

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
 
    @Column
    private String fname;
 
    @Column
    private String lname;
 
    @Column
    private String email;
 
    public int getId() {
        return id;
    }
 
    public void setId(int id) {
        this.id = id;
    }
 
    public String getFname() {
        return fname;
    }
 
    public void setFname(String fname) {
        this.fname = fname;
    }
    
    public String getLname() {
        return lname;
    }
 
    public void setLname(String lname) {
        this.lname = lname;
    }
 
    public String getEmail() {
        return email;
    }
 
    public void setEmail(String email) {
        this.email = email;
    }
}
