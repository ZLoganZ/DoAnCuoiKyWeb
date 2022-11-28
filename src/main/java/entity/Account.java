/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;


public class Account {
    private int id;
    private String user;
    private String name;
    private String pass;
    private int isSell;
    private int isAdmin;
    private String email;

    public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public int getIsSell() {
        return isSell;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public Account(int id, String user, String name, String pass, int isSell, int isAdmin, String email) {
		
		this.id = id;
		this.user = user;
        this.name = name;
		this.pass = pass;
		this.isSell = isSell;
		this.isAdmin = isAdmin;
		this.email = email;
	}

	public Account() {
		
	}

	@Override
	public String toString() {
		return "Account [id=" + id + ", user=" + user + ", name=" + name + ", pass=" + pass + ", isSell=" + isSell + ", isAdmin=" + isAdmin
				+ ", email=" + email + "]";
	}

	public void setIsSell(int isSell) {
        this.isSell = isSell;
    }

    public int getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }

   
   

    
}
