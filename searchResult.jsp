<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="hotel.model.Reservation" %>
<%@ page import="java.util.Iterator" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Results</title>
</head>
<body>
    <h1>Search Results</h1>

    <% List<Reservation> reservations = (List<Reservation>) request.getAttribute("reservations"); %>
    <% if (reservations != null && !reservations.isEmpty()) { %>
        <% for (Reservation reservation : reservations) { %>
            <p>ID: <%= reservation.getId() %>, Date: <%= reservation.getDate() %>, Time: <%= reservation.getTime() %>,
               Party Size: <%= reservation.getPartySize() %>, Customer Name: <%= reservation.getCustomerName() %>,
               Phone Number: <%= reservation.getPhoneNumber() %>, Table ID: <%= reservation.getTableId() %></p>
        <% } %>
    <% } else { %>
        <p>No reservations found.</p>
    <% } %>
    
    <a href="homeController">Back to Home</a>
</body>
</html>
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="hotel.model.Reservation" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Search Results</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <style>
        body {
            background: url('https://media.istockphoto.com/id/1428737062/photo/empty-wooden-table-top-with-lights-bokeh-on-blur-restaurant-background.webp?b=1&s=170667a&w=0&k=20&c=bmQyPVwhLAB_FN9glJrREyPxzmIQPv5TOFcqcXHy2pw=') center center fixed;
            background-size: cover;
            color: #4CAF50; /* Green font color */
            padding-top: 80px; /* Adjust based on your needs */
        }

        .navbar {
            background-color: rgba(0, 0, 0, 0.7); /* Semi-transparent black background */
        }

        .container {
            background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent white background for the container */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            border: 1px solid #ccc;
            margin-top: 20px;
        }

        h1, p, a {
            text-align: center;
            color: #4CAF50; /* Green font color */
        }

        .btn {
            margin-top: 20px;
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
        <h1>Search Results</h1>

        <% List<Reservation> reservations = (List<Reservation>) request.getAttribute("reservations"); %>
        <% if (reservations != null && !reservations.isEmpty()) { %>
            <% for (Reservation reservation : reservations) { %>
                <p>ID: <%= reservation.getId() %>, Date: <%= reservation.getDate() %>, Time: <%= reservation.getTime() %>,
                   Party Size: <%= reservation.getPartySize() %>, Customer Name: <%= reservation.getCustomerName() %>,
                   Phone Number: <%= reservation.getPhoneNumber() %>, Table ID: <%= reservation.getTableId() %></p>
            <% } %>
        <% } else { %>
            <p>No reservations found.</p>
        <% } %>

        <a class="btn btn-primary" href="homeController">Back to Home</a>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>
</html>

 