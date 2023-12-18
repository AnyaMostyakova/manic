package ru.kpfu.itis.servlet;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/registration")
public class RegistrationServlet extends HttpServlet {
    private boolean checkUserExistence(String name) {
        try {
            Class.forName("org.postgresql.Driver");
            Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/manicureservic", "postgres", "357706");
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM client WHERE name = ?");
            statement.setString(1, name);
            ResultSet resultSet = statement.executeQuery();
            resultSet.next();
            return resultSet.getBoolean(1);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    private void addClientToDatabase(String name, String phonenumber, String password) {
        try {
            Class.forName("org.postgresql.Driver");
            Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/manicureservic?characterEncoding=UTF-8", "postgres", "357706");
            PreparedStatement statement = connection.prepareStatement("INSERT INTO client (name, phonenumber, password) VALUES (?, ?, ?)");
            statement.setString(1, name);
            statement.setString(2, phonenumber);
            statement.setString(3, password);
            statement.executeUpdate();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String phonenumber = request.getParameter("phone");
        String password = request.getParameter("password");

        // Проверка наличия дубликатов пользователя
        if (checkUserExistence(name)) {
            request.setAttribute("message", "A user with that name already exists!");
            // передаем управление сервлету-шаблонизатору для вывода страницы
            // сервлет-шаблонизатор реагирует на расширение *.ftl (см. web.xml)
            request.getRequestDispatcher("/WEB-INF/view/regpage.jsp").forward(request, response);
        }else {

            // Добавление пользователя в базу данных
            addClientToDatabase(name, phonenumber, password);

            // Перенаправление на страницу успешного добавления
            response.sendRedirect("/manicure/home");
        }
    }
}
