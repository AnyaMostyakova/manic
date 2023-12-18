package ru.kpfu.itis.repository;

import ru.kpfu.itis.model.Visits;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class VisitsRepository {
    public Visits save(Visits visit) {
        try {
            Connection connection = DBConnection.getConnection();

            PreparedStatement statement = connection.prepareStatement(
                    "INSERT INTO visits (service_id,client_id, purchase_date) VALUES (?, ?, ?) RETURNING id"
            );


            statement.setLong(1, visit.getService_id().getId());
            statement.setLong(2, visit.getClient_id().getId());
            statement.setDate(3, new java.sql.Date(visit.getPurchaseDate().getTime()));

            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                visit.setId(resultSet.getLong("id"));
            }

            resultSet.close();
            statement.close();

            return visit;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
