package hotel.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hotel.model.Reservation;

@WebServlet("/SearchReservationController")
public class SearchReservationController extends HttpServlet {
    // Database connection details
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/ouppdb";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "12345678";

    @Override
    public void init() throws ServletException {
        try {
            // Load the MySQL JDBC driver class
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new ServletException("MySQL JDBC driver not found.", e);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String phoneNumber = request.getParameter("searchPhoneNumber");

        // Validate data
        if (phoneNumber == null || phoneNumber.isEmpty()) {
            response.sendRedirect("error.jsp?error=Invalid phone number");
            return;
        }

        List<Reservation> reservations = searchReservationsByPhoneNumber(phoneNumber);

        request.setAttribute("reservations", reservations);
        request.getRequestDispatcher("searchResult.jsp").forward(request, response);
    }

    private List<Reservation> searchReservationsByPhoneNumber(String phoneNumber) {
        List<Reservation> reservations = new ArrayList<>();

        try (Connection connection = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASSWORD)) {
            String query = "SELECT * FROM reservation WHERE phoneNumber = ?";
            try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
                preparedStatement.setString(1, phoneNumber);
                try (ResultSet resultSet = preparedStatement.executeQuery()) {
                    while (resultSet.next()) {
                        int id = resultSet.getInt("id");
                        String date = resultSet.getString("date");
                        String time = resultSet.getString("time");
                        int partySize = resultSet.getInt("partySize");
                        String customerName = resultSet.getString("customerName");
                        int tableId = resultSet.getInt("tableId");

                        Reservation reservation = new Reservation(id, date, time, partySize, customerName,
                                phoneNumber, tableId);
                        reservations.add(reservation);
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Handle the exception appropriately in a real-world scenario
        }

        return reservations;
    }

    @Override
    public void destroy() {
        // Cleanup resources, close database connections, etc.
    }
}
