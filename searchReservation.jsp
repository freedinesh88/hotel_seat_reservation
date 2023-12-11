<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Reservations</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: url('https://media.istockphoto.com/id/1428737062/photo/empty-wooden-table-top-with-lights-bokeh-on-blur-restaurant-background.webp?b=1&s=170667a&w=0&k=20&c=bmQyPVwhLAB_FN9glJrREyPxzmIQPv5TOFcqcXHy2pw=') center center fixed;
            background-size: cover;
            color: #17a2b8; /* Teal color */
            padding: 80px 20px 20px; /* Adjust based on your needs */
            margin: 0;
        }

        .navbar {
            background-color: rgba(0, 0, 0, 0.7); /* Semi-transparent black background */
        }

        h1, label, input, button {
            color: #17a2b8; /* Teal color */
        }

        form {
            max-width: 400px;
            margin: auto;
            background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent white background for form */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            border: 1px solid #17a2b8; /* Teal color */
            margin-top: 20px;
        }

        label {
            display: block;
            margin: 10px 0 5px;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            box-sizing: border-box;
            border: 1px solid #17a2b8; /* Teal color */
            border-radius: 4px;
            color: #495057; /* Dark gray color */
        }

        button {
            background-color: #17a2b8; /* Teal color */
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #117a8b; /* Darker teal color */
        }

        h2 {
            margin-top: 20px;
            color: #17a2b8; /* Teal color */
        }

        p {
            font-size: 16px;
            color: #17a2b8; /* Teal color */
            margin: 10px 0;
        }

        /* Additional styles for making it beautiful */
        h1 {
            font-size: 2em;
            text-align: center;
            margin-bottom: 30px;
        }

        form {
            text-align: center;
        }

        label, input {
            display: block;
            width: 100%;
            margin-bottom: 15px;
        }
    </style>
</head>
<body>

    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
        <a class="navbar-brand" href="homeController">
            <img src="your-logo.png" alt="Dinesh" width="50" height="50">
        </a>
    </nav>

    <div class="container">
        <h1>Search Reservations</h1>
        <form action="SearchReservationController" method="post">
            <label for="searchPhoneNumber">Enter Mobile Number:</label>
            <input type="text" id="searchPhoneNumber" name="searchPhoneNumber" required>
            <button type="submit">Search</button>
        </form>

        <!-- Uncomment the following section if you want to display search results -->
        <%-- <h2>Search Results:</h2>
        <c:forEach var="reservation" items="${reservations}">
            <p>ID: ${reservation.id}, Date: ${reservation.date}, Time: ${reservation.time}, Party Size: ${reservation.partySize}, Customer Name: ${reservation.customerName}, Phone Number: ${reservation.phoneNumber}, Table ID: ${reservation.tableId}</p>
        </c:forEach> --%>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
            integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
            integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
            crossorigin="anonymous"></script>

</body>
</html>
