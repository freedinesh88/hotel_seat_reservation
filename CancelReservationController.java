package hotel.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/CancelReservationController")
public class CancelReservationController extends HttpServlet {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/ouppdb";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "12345678";

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            throw new RuntimeException("Failed to load JDBC driver");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String phoneNumber = request.getParameter("phoneNumber");

        if (phoneNumber != null && !phoneNumber.isEmpty()) {
            if (cancelReservation(phoneNumber)) {
                response.sendRedirect("cancelConfirmation.jsp");
            } else {
                response.sendRedirect("error.jsp?error=Failed to cancel reservation");
            }
        } else {
            response.sendRedirect("error.jsp?error=Invalid phone number");
        }
    }

    private boolean cancelReservation(String phoneNumber) {
        try (Connection connection = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASSWORD)) {
            String query = "DELETE FROM reservation WHERE phoneNumber = ?";
            try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
                preparedStatement.setString(1, phoneNumber);
                int rowsAffected = preparedStatement.executeUpdate();
                return rowsAffected > 0;
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Log or handle the exception appropriately
        }
        return false;
    }
}
