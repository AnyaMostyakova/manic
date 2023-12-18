package ru.kpfu.itis.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Сервлет для отображения странички с логином и паролем для аутентификации
 */
@WebServlet("/login")
public class LoginGUIServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        // Атрибуты: запрос, сессия, контекст
        request.setAttribute("message", "");

        //Передаем управление диспетчеру, говоря, что требуется обработать сервлет по пути
        // index.ftl
        request.getRequestDispatcher("/WEB-INF/view/login.jsp").forward(request, response);
    }
}