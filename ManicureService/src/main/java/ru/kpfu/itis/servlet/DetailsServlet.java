package ru.kpfu.itis.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/details")
public class DetailsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String id = request.getParameter("id");

            if (id.equals("japaneseManicure")) {
                request.getRequestDispatcher("/WEB-INF/view/details1.jsp").forward(request, response);
            } else if (id.equals("europeanManicure")) {
                request.getRequestDispatcher("/WEB-INF/view/details2.jsp").forward(request, response);
            } else if (id.equals("apparatManicure")) {
            request.getRequestDispatcher("/WEB-INF/view/details3.jsp").forward(request, response);
            } else if (id.equals("obrezManicure")) {
                request.getRequestDispatcher("/WEB-INF/view/details4.jsp").forward(request, response);
            } else if (id.equals("combManicure")) {
                request.getRequestDispatcher("/WEB-INF/view/details5.jsp").forward(request, response);
            } else if (id.equals("gelManicure")) {
                request.getRequestDispatcher("/WEB-INF/view/details6.jsp").forward(request, response);
            } else if (id.equals("SheeManicure")) {
                request.getRequestDispatcher("/WEB-INF/view/details7.jsp").forward(request, response);
            } else if (id.equals("GelManicureDesign")) {
                request.getRequestDispatcher("/WEB-INF/view/details8.jsp").forward(request, response);
            } else if (id.equals("SheeManicureDesign")) {
                request.getRequestDispatcher("/WEB-INF/view/details9.jsp").forward(request, response);
            } else if (id.equals("apparatManicureM")) {
                request.getRequestDispatcher("/WEB-INF/view/details10.jsp").forward(request, response);
            } else if (id.equals("europManicureM")) {
                request.getRequestDispatcher("/WEB-INF/view/details11.jsp").forward(request, response);
            } else if (id.equals("classicManicureM")) {
                request.getRequestDispatcher("/WEB-INF/view/details12.jsp").forward(request, response);
            }
        }
}
