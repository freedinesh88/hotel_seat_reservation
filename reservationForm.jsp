<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Restaurant Reservations - Reservation Form</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: url('https://media.istockphoto.com/id/1428737062/photo/empty-wooden-table-top-with-lights-bokeh-on-blur-restaurant-background.webp?b=1&s=170667a&w=0&k=20&c=bmQyPVwhLAB_FN9glJrREyPxzmIQPv5TOFcqcXHy2pw=') center center fixed;
            background-size: cover;
            text-align: center;
            padding: 20px;
            margin: 0;
            color: #fff;
        }

        h1 {
            color: #fff;
        }

        form {
            max-width: 400px;
            margin: auto;
            background-color: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            border: 1px solid #ccc;
        }

        label {
            display: block;
            margin: 10px 0 5px;
            color: #17a2b8; /* Teal color */
        }

        input,
        select {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            box-sizing: border-box;
            border: 1px solid #17a2b8; /* Teal color */
            border-radius: 4px;
            color: #495057; /* Dark gray color for input text */
            background-color: #f8f9fa; /* Light gray background color for input fields */
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
    </style>
</head>
<body>
    <h1>Reservation Form</h1>
    <form action="ReservationController" method="post">
        <label for="date">Date:</label>
        <input type="text" id="date" name="date" placeholder="YYYY-MM-DD" required><br>

        <label for="time">Time:</label>
        <input type="text" id="time" name="time" placeholder="HH:MM AM/PM" required><br>

        <label for="partySize">Party Size:</label>
        <select id="partySize" name="partySize" required>
            <option value="2">2</option>
            <option value="4">4</option>
            <option value="6">6</option>
        </select><br>

        <label for="customerName">Customer Name:</label>
        <input type="text" id="customerName" name="customerName" required><br>

        <label for="phoneNumber">Phone Number:</label>
        <input type="tel" id="phoneNumber" name="phoneNumber" required><br>

        <button type="submit">Submit Reservation</button>
    </form>

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
