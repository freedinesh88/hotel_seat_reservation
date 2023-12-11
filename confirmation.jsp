<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Restaurant Reservations - Confirmation</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: url('https://media.istockphoto.com/id/1428737062/photo/empty-wooden-table-top-with-lights-bokeh-on-blur-restaurant-background.webp?b=1&s=170667a&w=0&k=20&c=bmQyPVwhLAB_FN9glJrREyPxzmIQPv5TOFcqcXHy2pw=') center center fixed;
            background-size: cover;
            text-align: center;
            padding: 50px;
            margin: 0;
            color: #e74c3c; /* Change font color to a shade of red */
        }

        h1 {
            color: #e74c3c; /* Change heading color to a shade of red */
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #dee2e6;
            color: #3498db; /* Change text color to a shade of blue */
        }

        th {
            background-color: #2c3e50; /* Change background color of headers */
            color: #fff;
        }

        tr:hover {
            background-color: #ecf0f1; /* Change background color on hover */
        }

        a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #e74c3c; /* Change button background color to a shade of red */
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #c0392b; /* Darker shade on hover */
        }
    </style>
</head>
<body>
    <h1>Reservation Confirmed!</h1>

    <table>
        <tr>
            <th>Field</th>
            <th>Details</th>
        </tr>
        <tr>
            <td>Date</td>
            <td>${reservation.date}</td>
        </tr>
        <tr>
            <td>Time</td>
            <td>${reservation.time}</td>
        </tr>
        <tr>
            <td>Party Size</td>
            <td>${reservation.partySize}</td>
        </tr>
        <tr>
            <td>Customer Name</td>
            <td>${reservation.customerName}</td>
        </tr>
        <tr>
            <td>Phone Number</td>
            <td>${reservation.phoneNumber}</td>
        </tr>
        <tr>
            <td>Table ID</td>
            <td>${reservation.tableId}</td>
        </tr>
    </table>

    <a href="homeController">Back to Home</a>

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
