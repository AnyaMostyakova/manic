package ru.kpfu.itis.repository;

import ru.kpfu.itis.model.Client;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ClientRepository {

    public List<Client> findAll() {
        try {
            Connection connection = DBConnection.getConnection();

            PreparedStatement statement = connection.prepareStatement(
                    "select id,name, phonenumber, password from client"
            );

            ResultSet resultSet = statement.executeQuery();

            List<Client> result = new ArrayList<>();

            while (resultSet.next()) {
                result.add(new Client(
                        resultSet.getLong("id"),
                        resultSet.getString("name"),
                        resultSet.getString("phonenumber"),
                        resultSet.getString("password")
                ));
            }
            return result;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public Client findById(Long id) {
        try {
            Connection connection = DBConnection.getConnection();

            PreparedStatement statement = connection.prepareStatement(
                    "select id,name, phonenumber, password from client where id = ? "
            );

            statement.setLong(1, id);

            ResultSet resultSet = statement.executeQuery();

            Client result = null;

            if (resultSet.next()) {
                result = new Client(
                        resultSet.getLong("id"),
                        resultSet.getString("name"),
                        resultSet.getString("phonenumber"),
                        resultSet.getString("password")
                );
            }
            return result;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public Client findByName(String name) {
        try {
            Connection connection = DBConnection.getConnection();

            PreparedStatement statement = connection.prepareStatement(
                    "select id,name, phonenumber,password from client where name = ? "
            );

            statement.setString(1, name);

            ResultSet resultSet = statement.executeQuery();

            Client result = null;

            if (resultSet.next()) {
                result = new Client(
                        resultSet.getLong("id"),
                        resultSet.getString("name"),
                        resultSet.getString("phonenumber"),
                        resultSet.getString("password")
                );
            }

            resultSet.close();
            statement.close();

            return result;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }


    public Client getClientByName(String name) throws SQLException {
        try {
            Connection connection = DBConnection.getConnection();

            PreparedStatement statement = connection.prepareStatement(
                    "SELECT * FROM client WHERE name = ?"
            );
            statement.setString(1, name);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                int id = resultSet.getInt("id");
                String phoneNumber = resultSet.getString("phonenumber");
                String password = resultSet.getString("password");
                return new Client((long) id, name, phoneNumber, password);
            }
            return null;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public Client save(Client client) {
        try {
            Connection connection = DBConnection.getConnection();

            PreparedStatement statement = connection.prepareStatement(
                    "insert into client (name,phonenumber,password) " +
                            "values ( ? , ? , ? ) returning id "
            );

            statement.setString(1, client.getName());
            statement.setString(2, client.getPhonenumber());
            statement.setString(3, client.getPassword());

            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                client.setId(resultSet.getLong("id"));
            }

            resultSet.close();
            statement.close();

            return client;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}