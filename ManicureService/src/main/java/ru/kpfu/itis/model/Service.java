package ru.kpfu.itis.model;

public class Service {
    private Long id;
    private String name;
    private int price;
    public Service(){
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
    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public Service(Long id, String name, int price) {
        this.id = id;
        this.name = name;
        this.price = price;
    }
}
