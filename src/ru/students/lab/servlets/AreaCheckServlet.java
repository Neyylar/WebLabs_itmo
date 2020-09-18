package ru.students.lab.servlets;

import ru.students.lab.models.Point;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.time.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "AreaCheckServlet")
public class AreaCheckServlet extends HttpServlet {

    public static final String SAVED_POINTS = "savedPoints";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        LocalDateTime start = LocalDateTime.now();
        HttpSession httpSession = request.getSession();

        double x = Double.parseDouble(request.getParameter("x"));
        double y = Double.parseDouble(request.getParameter("y"));
        double r = Double.parseDouble(request.getParameter("r"));

        List<Point> savedPoints = (List<Point>) httpSession.getAttribute(SAVED_POINTS);
        if (savedPoints == null)
            savedPoints = new ArrayList<>();

        double computedTime = (double) Duration.between(start, LocalDateTime.now()).toMillis();
        Point point = new Point (x, y, r, start, computedTime);
        savedPoints.add(point);
        httpSession.setAttribute(SAVED_POINTS, savedPoints);

        request.setAttribute("addedPoint", point);
        getServletContext().getRequestDispatcher("/response.jsp").forward(request, response);
    }
}
