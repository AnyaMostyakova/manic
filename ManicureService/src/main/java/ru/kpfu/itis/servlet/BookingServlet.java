package ru.kpfu.itis.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.format.DateTimeParseException;
import java.util.Calendar;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/visit")
public class BookingServlet extends HttpServlet {
    private boolean checkUserExistence(String name) {
        try {
            Class.forName("org.postgresql.Driver");
            Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/manicureservic?characterEncoding=UTF-8", "postgres", "357706");
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM client WHERE name = ?");
            statement.setString(1, name);
            ResultSet resultSet = statement.executeQuery();
            return resultSet.next();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    private boolean isValidDate(LocalDate selectedDate) {
        LocalDate currentDate = LocalDate.now();
        LocalDate maxAllowedDate = currentDate.plusDays(30);
        return selectedDate.isEqual(currentDate) || selectedDate.isAfter(currentDate) && selectedDate.isBefore(maxAllowedDate);
    }
    private long getUserId(String name) {
        try {
            Class.forName("org.postgresql.Driver");
            Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/manicureservic?characterEncoding=UTF-8", "postgres", "357706");
            PreparedStatement statement = connection.prepareStatement("SELECT id FROM client WHERE name = ?");
            statement.setString(1, name);
            ResultSet resultSet = statement.executeQuery();
            resultSet.next();
            return resultSet.getLong(1);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return 0;
        }
    }

    private long getServiceId(String serviceName) {
        try {
            Class.forName("org.postgresql.Driver");
            Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/manicureservic?characterEncoding=UTF-8", "postgres", "357706");
            PreparedStatement statement = connection.prepareStatement("SELECT id FROM service WHERE name = ?");
            statement.setString(1, serviceName);
            ResultSet resultSet = statement.executeQuery();
            if(resultSet.next()) {
                return resultSet.getLong("id");
            } else {
                // Обработка, если запись не найдена
                return 0;
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return 0;
        }
    }

    private void addVisitToDatabase(long userId, long serviceId, java.sql.Timestamp purchasedate) {
        try {
            Class.forName("org.postgresql.Driver");Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/manicureservic?characterEncoding=UTF-8", "postgres", "357706");
            PreparedStatement statement = connection.prepareStatement("INSERT INTO visits (service_id,client_id, purchasedate) VALUES (?, ?, ?)");
            statement.setLong(1, serviceId);
            statement.setLong(2, userId);
            statement.setTimestamp(3, purchasedate);
            statement.executeUpdate();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String service = request.getParameter("service");
        String date = request.getParameter("date");
        if (!checkUserExistence(name)) {
            request.setAttribute("message", "A user with that name does not exist!");
            request.getRequestDispatcher("/WEB-INF/view/record.jsp").forward(request, response);
        } else {
            try {
                LocalDate selectedDate = LocalDate.parse(date);
                LocalDate currentDate = LocalDate.now();

                if (selectedDate.isAfter(currentDate.plusDays(30))) {
                    request.setAttribute("message", "Recording is only possible within 30 days from the current date!");
                    request.getRequestDispatcher("/WEB-INF/view/record.jsp").forward(request, response);
                } else {
                    long userId = getUserId(name);
                    long serviceId = getServiceId(service);
                    java.sql.Timestamp purchasedate = java.sql.Timestamp.valueOf(LocalDate.parse(date).atStartOfDay());

                    // Добавление записи о визите в базу данных
                    addVisitToDatabase(userId, serviceId, purchasedate);

                    // Перенаправление на страницу успешной записи
                    request.getRequestDispatcher("/WEB-INF/view/recordConfirmation.jsp").forward(request, response);
                }
            } catch (DateTimeParseException e) {
                request.setAttribute("message", "Incorrect date format!");
                request.getRequestDispatcher("/WEB-INF/view/record.jsp").forward(request, response);
            }
        }
    }
}

