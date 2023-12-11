<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="hotel.model.Restaurant" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome to XYZ Restaurant</title>
</head>
<body>
    <h1>Welcome to XYZ Restaurant</h1>

    <% List<Restaurant> restaurants = (List<Restaurant>) request.getAttribute("restaurants"); %>
    <% if (restaurants != null && !restaurants.isEmpty()) { %>
        <ul>
            <% for (Restaurant restaurant : restaurants) { %>
                <li>
                    <p>Name: <%= restaurant.getName() %></p>
                    <p>Address: <%= restaurant.getAddress() %></p>
                    <p>Phone Number: <%= restaurant.getPhoneNumber() %></p>
                </li>
            <% } %>
        </ul>
    <% } else { %>
        <p>Failed to retrieve restaurant details. Please try again later.</p>
    <% } %>

    <h2>Available Seats: <%= (request.getAttribute("availableSeats") != null) ? request.getAttribute("availableSeats") : 50 %></h2>

    <!-- Reservation Links -->
    <a href="<%= request.getContextPath() %>/reservationForm.jsp">Make a Reservation</a>
    <a href="<%= request.getContextPath() %>/searchReservation.jsp">Search Reservation</a>
    <a href="<%= request.getContextPath() %>/cancelReservation.jsp">Cancel Reservation</a>
    
    <!-- Add other content as needed -->

</body>
</html>
 --%>
<%--  <%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="hotel.model.Restaurant" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome to XYZ Restaurant</title>
</head>
<body>
    <h1>Welcome to XYZ Restaurant</h1>

    <% List<Restaurant> restaurants = (List<Restaurant>) request.getAttribute("restaurants"); %>
    <% if (restaurants != null && !restaurants.isEmpty()) { %>
        <ul>
            <% for (Restaurant restaurant : restaurants) { %>
                <li>
                    <p>Name: <%= restaurant.getName() %></p>
                    <p>Address: <%= restaurant.getAddress() %></p>
                    <p>Phone Number: <%= restaurant.getPhoneNumber() %></p>
                </li>
            <% } %>
        </ul>
    <% } else { %>
        <p>Failed to retrieve restaurant details. Please try again later.</p>
    <% } %>

    <h2>Available Seats: <%= (request.getAttribute("availableSeats") != null) ? request.getAttribute("availableSeats") : 50 %></h2>

    <!-- Reservation Links -->
    <a href="<%= request.getContextPath() %>/reservationForm.jsp">Make a Reservation</a>
    <a href="<%= request.getContextPath() %>/searchReservation.jsp">Search Reservation</a>
    <a href="<%= request.getContextPath() %>/cancelReservation.jsp">Cancel Reservation</a>
    
    <!-- Add other content as needed -->

</body>
</html>
  --%>
  <%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="hotel.model.Restaurant" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Welcome to Dinesh Restaurant</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <style>
    body {
        background: url('https://media.istockphoto.com/id/1428737062/photo/empty-wooden-table-top-with-lights-bokeh-on-blur-restaurant-background.webp?b=1&s=170667a&w=0&k=20&c=bmQyPVwhLAB_FN9glJrREyPxzmIQPv5TOFcqcXHy2pw=') center center fixed;
        background-size: cover;
        color: #fff;
        padding-top: 80px; /* Adjust based on your needs */
    }

    .navbar {
        background-color: rgba(0, 0, 0, 0.7); /* Semi-transparent black background */
    }

    .jumbotron {
        background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent black background for the container */
        padding: 20px; /* Add padding to improve visibility of content */
        border-radius: 10px; /* Optional: Add rounded corners to the container */
    }

    h1, h2, p {
        text-align: center;
        color: #fff; /* Set text color to white for better contrast */
    }

    ul {
        list-style: none;
        padding: 0;
    }

    li {
        margin-bottom: 20px;
    }
</style>
</head>
<body>

    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
        <a class="navbar-brand" href="homeController">
            <img src="Screenshot 2023-12-08 173953.png" alt="Dinesh" width="50" height="50">
            
        </a>
    </nav>

    <div class="container">
        <div class="jumbotron">
            <h1 class="display-3">Welcome to Dinesh Restaurant</h1>

            <% List<Restaurant> restaurants = (List<Restaurant>) request.getAttribute("restaurants"); %>
            <% if (restaurants != null && !restaurants.isEmpty()) { %>
                <ul>
                    <% for (Restaurant restaurant : restaurants) { %>
                        <li>
                            <p>Name: <%= restaurant.getName() %></p>
                            <p>Address: <%= restaurant.getAddress() %></p>
                            <p>Phone Number: <%= restaurant.getPhoneNumber() %></p>
                        </li>
                    <% } %>
                </ul>
            <% } else { %>
                <p>Failed to retrieve restaurant details. Please try again later.</p>
            <% } %>

            <h2>Available Seats: <%= (request.getAttribute("availableSeats") != null) ? request.getAttribute("availableSeats") : 50 %></h2>

            <!-- Reservation Links -->
            <button class="btn btn-primary" onclick="window.location.href='<%= request.getContextPath() %>/reservationForm.jsp'">Make a Reservation</button>
            <button class="btn btn-success" onclick="window.location.href='<%= request.getContextPath() %>/searchReservation.jsp'">Search Reservation</button>
            <button class="btn btn-danger" onclick="window.location.href='<%= request.getContextPath() %>/cancelReservation.jsp'">Cancel Reservation</button>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>
</html>
  