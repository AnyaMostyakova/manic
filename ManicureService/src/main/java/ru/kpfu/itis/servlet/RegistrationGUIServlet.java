package ru.kpfu.itis.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

/**
 * Сервлет для отображения странички с регистрационной формой
 */
@WebServlet("/regpage")
public class RegistrationGUIServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        //Передаем управление диспетчеру , говоря, что требуется обработать сервлет по пути
        // regpage.ftl
        request.getRequestDispatcher("/WEB-INF/view/regpage.jsp").forward(request, response);
    }
}