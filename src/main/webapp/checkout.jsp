<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Checkout - MiniAmazon</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body class="bg-light">

<div class="container mt-2 mb-2 text-end">
    <a href="index.jsp" class="btn btn-outline-primary"><span class="bi bi-house-door-fill"></span> Home</a>
</div>

<div class="container mt-5">
    <h3 class="text-success text-center"><span class="bi bi-bag-check"></span> Order Placed Successfully!</h3>
    <% if (request.getAttribute("msg") != null) { %>
        <div class="alert alert-success text-center"><%= request.getAttribute("msg") %></div>
    <% } %>
    <div class="text-center mt-3">
        <a href="index.jsp" class="btn btn-primary"><span class="bi bi-shop"></span> Continue Shopping</a>
    </div>
</div>
</body>
</html>
