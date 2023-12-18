package ru.kpfu.itis.model;

import java.util.Date;

public class Visits {
    private Long id;
    private Service service_id;
    private Client client_id;
    private Date purchaseDate;

    public Visits(){
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Service getService_id() {
        return service_id;
    }

    public void setService_id(Service service_id) {
        this.service_id = service_id;
    }

    public Client getClient_id() {
        return client_id;
    }

    public void setClient_id(Client client_id) {
        this.client_id = client_id;
    }

    public Date getPurchaseDate() {
        return purchaseDate;
    }

    public void setPurchaseDate(Date purchaseDate) {
        this.purchaseDate = purchaseDate;
    }

    public Visits(Long id, Service service_id, Client client_id, Date purchaseDate) {
        this.id = id;
        this.service_id = service_id;
        this.client_id = client_id;
        this.purchaseDate = purchaseDate;
    }
}
