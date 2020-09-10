<%--
  Created by IntelliJ IDEA.
  User: joseortiz09
  Date: 10.09.2020
  Time: 3:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>WebLab2</title>

    <link rel="apple-touch-icon" sizes="180x180" href="./assets/images/favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="./assets/images/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="./assets/images/favicon/favicon-16x16.png">
    <link rel="manifest" href="./assets/images/favicon/site.webmanifest">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="./assets/styles.css">
</head>

<body>
<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
    <a class="navbar-brand" href="#">
        <img src="./assets/images/favicon/favicon-32x32.png" width="30" height="30"
             class="d-inline-block align-top" alt="brans-logo"
        >
        It's my brand
    </a>
    <a class="nav-item nav-link" href="#">Home</a>
    <a class="nav-item nav-link" href="#">GitHub</a>
</nav>
<main role="main" class="container">
    <div class="jumbotron">
        <h1 class="text-center header-text">
            <span data-melo="ig round-left">Ortiz</span>
            <span data-melo="ig round-left1">Correa</span>
            <span data-melo="ig round-right">Jose</span>
            <span data-melo="ig round-right1">David</span>
            - P3232 -
            <span data-melo="ig weird-title">Var. 2813</span>
        </h1>
    </div>

    <div class="row">
        <div class="col-sm">
            <canvas id="graph-canvas"></canvas>
        </div>
        <div class="col-sm">
            <form id="request-form">
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">X:</label>
                    <div class="col-sm-10" id="options_x"></div>
                </div>
                <div class="form-group row">
                    <label for="y" class="col-sm-2 col-form-label">Y:</label>
                    <div class="col-sm-10">
                        <input type="text" id="y" name="y"
                               class="form-control"
                               placeholder="value in [-3..3]" oninput="validateInput()"
                               onchange="validateInput()"
                        >
                    </div>
                </div>
                <div class="form-group row">
                    <label for="r" class="col-sm-2 col-form-label">R:</label>
                    <div class="col-sm-10">
                        <select name="r" class="form-control" id="r"></select>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-sm-2 col-form-label"></div>
                    <div class="col-sm-10">
                        <button type="submit" id="submit-btn" class="btn btn-dark" disabled>send</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <div>
        <table class="table table-dark" id="results-table">
            <thead>
            <tr>
                <th>X</th>
                <th>Y</th>
                <th>R</th>
                <th>RESULT</th>
                <th>Current Time</th>
                <th>Computation Time</th>
            </tr>
            </thead>
            <tbody id="results_table_body">
            </tbody>
        </table>
    </div>
</main>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="./assets/canvas.js"></script>
<script src="./assets/scripts.js"></script>
</body>
</html>