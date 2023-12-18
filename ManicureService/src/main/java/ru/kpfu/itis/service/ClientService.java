package ru.kpfu.itis.service;

import ru.kpfu.itis.model.Client;
import ru.kpfu.itis.repository.ClientRepository;

import java.util.List;
public class ClientService {

    private ClientRepository repository;

    public ClientService() {
        repository = new ClientRepository();
    }

    public Client save(Client client) {
        return repository.save(client);
    }

    public List<Client> findAll() {
        return repository.findAll();
    }

    public Client findById(Long id) {
        return repository.findById(id);
    }

    public Client findByName(String name) {
        return repository.findByName(name);
    }
}