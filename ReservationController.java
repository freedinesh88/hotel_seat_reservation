package hotel.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Time;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hotel.model.Reservation;
import hotel.model.Table;

@WebServlet("/ReservationController")
public class ReservationController extends HttpServlet {
    private List<Table> tables;

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

        // Initialize tables (simplified in-memory database simulation)
        tables = new ArrayList<>();
        tables.add(new Table(1, 4, true));
        tables.add(new Table(2, 6, true));
        tables.add(new Table(3, 2, true));
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("customerName");
        String phoneNumber = request.getParameter("phoneNumber");
        int partySize = Integer.parseInt(request.getParameter("partySize"));
        String dateStr = request.getParameter("date");
        String timeStr = request.getParameter("time");

        // Validate data
        if (name == null || phoneNumber == null || dateStr == null || timeStr == null || partySize <= 0) {
            response.sendRedirect("error.jsp?error=Invalid form data");
            return;
        }

        // Check availability
        int tableId = checkAvailability(partySize);

        if (tableId != -1) {
            Reservation reservation = new Reservation(tableId, dateStr, timeStr, partySize, name, phoneNumber, tableId);
            updateTableAvailability(tableId, false);

            // Store reservation data in the database
            storeReservationInDatabase(reservation);

            request.setAttribute("reservation", reservation);
            request.getRequestDispatcher("confirmation.jsp").forward(request, response);
        } else {
            response.sendRedirect("error.jsp?error=No available table for the specified party size");
        }
    }

    private int checkAvailability(int partySize) {
        for (Table table : tables) {
            if (table.isAvailable() && table.getCapacity() >= partySize) {
                return table.getId();
            }
        }
        return -1; // No available table
    }

    private void updateTableAvailability(int tableId, boolean available) {
        for (Table table : tables) {
            if (table.getId() == tableId) {
                table.setAvailable(available);
                break;
            }
        }
    }

    private void storeReservationInDatabase(Reservation reservation) {
        try (Connection connection = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASSWORD)) {
            String query = "INSERT INTO reservation (date, time, partySize, customerName, phoneNumber, tableId) VALUES (?, ?, ?, ?, ?, ?)";
            try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
                preparedStatement.setString(1, reservation.getDate());
                preparedStatement.setString(2, reservation.getTime());
                preparedStatement.setInt(3, reservation.getPartySize());
                preparedStatement.setString(4, reservation.getCustomerName());
                preparedStatement.setString(5, reservation.getPhoneNumber());
                preparedStatement.setInt(6, reservation.getTableId());
                preparedStatement.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Handle the exception appropriately in a real-world scenario
        }
    }

    @Override
    public void destroy() {
        // Cleanup resources, close database connections, etc.
    }
}
