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

import hotel.model.Restaurant;

//package hotel.controller;
//
//import hotel.model.Restaurant;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//import java.sql.*;
//import java.util.ArrayList;
//import java.util.List;
//
//@WebServlet("/home")
//public class HomepageController extends HttpServlet {
//    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/ouppdb";
//    private static final String DB_USER = "root";
//    private static final String DB_PASSWORD = "12345678";
//
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        List<Restaurant> restaurants = getRestaurantDetails();
//
//        if (!restaurants.isEmpty()) {
//            request.setAttribute("restaurants", restaurants);
//        } else {
//            request.setAttribute("error", "Failed to retrieve restaurant details");
//        }
//
//        int availableSeats = calculateAvailableSeats();
//        request.setAttribute("availableSeats", availableSeats);
//
//        request.getRequestDispatcher("home.jsp").forward(request, response);
//    }
//
//    private List<Restaurant> getRestaurantDetails() {
//        List<Restaurant> restaurants = new ArrayList<>();
//        try (Connection connection = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASSWORD)) {
//            String query = "SELECT * FROM restaurant WHERE id = 1";
//            try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
//                try (ResultSet resultSet = preparedStatement.executeQuery()) {
//                    while (resultSet.next()) {
//                        Restaurant restaurant = new Restaurant();
//                        restaurant.setName(resultSet.getString("name"));
//                        restaurant.setAddress(resultSet.getString("address"));
//                        restaurant.setPhoneNumber(resultSet.getString("phoneNumber"));
//                        restaurants.add(restaurant);
//                    }
//                }
//            }
//        } catch (SQLException e) {
//            e.printStackTrace(); // Log or handle the exception appropriately
//        }
//        return restaurants;
//    }
//
//    private int calculateAvailableSeats() {
//        try (Connection connection = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASSWORD)) {
//            String query = "SELECT SUM(partySize) AS totalPartySize FROM reservation";
//            try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
//                try (ResultSet resultSet = preparedStatement.executeQuery()) {
//                    if (resultSet.next()) {
//                        int totalPartySize = resultSet.getInt("totalPartySize");
//                        return Math.max(0, 100 - totalPartySize);
//                    }
//                }
//            }
//        } catch (SQLException e) {
//            e.printStackTrace(); // Handle the exception appropriately in a real-world scenario
//        }
//        return 0;
//    }
//}
@WebServlet("/homeController")
public class HomepageController extends HttpServlet {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/ouppdb";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "12345678";

    static {
        try {
            // Ensure the MySQL JDBC driver is loaded
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Restaurant> restaurants = getRestaurantDetails();

        if (!restaurants.isEmpty()) {
            request.setAttribute("restaurants", restaurants);
        } else {
            request.setAttribute("error", "Failed to retrieve restaurant details");
        }

        int availableSeats = calculateAvailableSeats();
        request.setAttribute("availableSeats", availableSeats);

        request.getRequestDispatcher("/home.jsp").forward(request, response);
    }

    private List<Restaurant> getRestaurantDetails() {
        List<Restaurant> restaurants = new ArrayList<>();
        try (Connection connection = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASSWORD)) {
            String query = "SELECT * FROM restaurant WHERE id = 1";
            try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
                try (ResultSet resultSet = preparedStatement.executeQuery()) {
                    while (resultSet.next()) {
                        Restaurant restaurant = new Restaurant();
                        restaurant.setName(resultSet.getString("name"));
                        restaurant.setAddress(resultSet.getString("address"));
                        restaurant.setPhoneNumber(resultSet.getString("phoneNumber"));
                        restaurants.add(restaurant);
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Log or handle the exception appropriately
        }
        return restaurants;
    }

    private int calculateAvailableSeats() {
        try (Connection connection = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASSWORD)) {
            String query = "SELECT SUM(partySize) AS totalPartySize FROM reservation";
            try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
                try (ResultSet resultSet = preparedStatement.executeQuery()) {
                    if (resultSet.next()) {
                        int totalPartySize = resultSet.getInt("totalPartySize");
                        return Math.max(0, 50 - totalPartySize);
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Handle the exception appropriately in a real-world scenario
        }
        return 0;
    }
}