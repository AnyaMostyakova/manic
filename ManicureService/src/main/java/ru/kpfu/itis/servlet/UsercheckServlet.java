package ru.kpfu.itis.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import ru.kpfu.itis.model.Client;
import ru.kpfu.itis.service.ClientService;
import java.io.IOException;

/**
 * Сервлет принимает данные формы со страницы  /login
 * аутентифицирует пользователя по логину и паролю
 * перенаправляет:
 *  - при успешной аутентификации на главную страницу
 *  - при ошибке в логине или пароле вновь на страницу с шаблоном login.ftl с сообщением об ошибке
 */

@WebServlet("/usercheck")
public class UsercheckServlet extends HttpServlet {

    private ClientService service = new ClientService();

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        System.out.println("usercheck servlet");

        // извлекаем из запроса параметры формы
        String name = request.getParameter("username");
        String password = request.getParameter("password");

        // ищем в БД пользователя с указанным логином
        Client client = service.findByName(name);

        // если пользователь нашелся надо проверить пароль
        if ( client != null && client.getPassword().equals(password)) {

            // Создаем сессию для пользователя, в атрибутах которой сохраним его идентификаторы
            HttpSession session = request.getSession();

            // будем хранить в сессии имя клиента и его id для работы с БД
            session.setAttribute("clientname", client.getName());
            session.setAttribute("clientid", client.getId());

            // перенаправляем на главную страницу
            response.sendRedirect("/manicure/home");

        } else {
            // Формируем вновь страницу для ввода логина и пароля с сообщением об ошибке
            request.setAttribute("message", "Invalid password or login");
            // передаем управление сервлету-шаблонизатору для вывода страницы
            // сервлет-шаблонизатор реагирует на расширение *.ftl (см. web.xml)
            request.getRequestDispatcher("/WEB-INF/view/login.jsp").forward(request, response);
        }
    }
}