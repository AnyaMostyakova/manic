package ru.kpfu.itis.model;
public class Client {
    private Long id;
    private String name;
    private String phonenumber;
    private String password;

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

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Client(Long id, String name, String phonenumber, String password) {
        this.id = id;
        this.name = name;
        this.phonenumber = phonenumber;
        this.password = password;
    }
}