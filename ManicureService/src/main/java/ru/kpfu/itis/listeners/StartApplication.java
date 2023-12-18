package ru.kpfu.itis.listeners;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import ru.kpfu.itis.repository.DBConnection;

import java.sql.SQLException;

@WebListener
public class StartApplication implements ServletContextListener {

    public void contextInitialized(ServletContextEvent sce) {

        System.out.println("start app ");
        try {
            DBConnection.getConnection();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("stop app ");
        DBConnection.destroyConnection();
    }
}