<!DOCTYPE html>
<html>
<head>
    <title>Заказы и услуги</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        .container {
            margin-top: 100px;
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Заказы и услуги</h2>
    <table>
        <thead>
        <tr>
            <th>id</th>
            <th>user_id</th>
            <th>product_id</th>
            <th>quantity</th>
            <th>total_price</th>
            <th>order_date</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>1</td>
            <td>1</td>
            <td>1</td>
            <td>2</td>
            <td>1000</td>
            <td>2020-01-01</td>
        </tr>
        <tr>
            <td>2</td>
            <td>2</td>
            <td>2</td>
            <td>1</td>
            <td>500</td>
            <td>2020-01-02</td>
        </tr>
        <tr>
            <td>3</td>
            <td>3</td>
            <td>3</td>
            <td>3</td>
            <td>1500</td>
            <td>2020-01-03</td>
        </tr>
        </tbody>
    </table>
</div>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>