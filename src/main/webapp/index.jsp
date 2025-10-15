<%@ page import="model.ProductList,model.Product" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>MiniAmazon Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body class="bg-light">

<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container-fluid">
        <a class="navbar-brand" href="index.jsp"><span class="bi bi-shop"></span> MiniAmazon</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ms-auto">
                <% boolean loggedIn = (session.getAttribute("user") != null); %>
                <% if (!loggedIn) { %>
                    <li class="nav-item"><a class="nav-link" href="signup.jsp"><span class="bi bi-person-plus"></span> Signup</a></li>
                    <li class="nav-item"><a class="nav-link" href="login.jsp"><span class="bi bi-box-arrow-in-right"></span> Login</a></li>
                    <li class="nav-item">
                      <a class="nav-link disabled" tabindex="-1" aria-disabled="true" style="opacity:0.5;">
                        <span class="bi bi-cart"></span> Cart
                      </a>
                    </li>
                <% } else { %>
                    <li class="nav-item"><a class="nav-link" href="LogoutServlet"><span class="bi bi-box-arrow-right"></span> Logout</a></li>
                    <li class="nav-item"><a class="nav-link" href="cart.jsp"><span class="bi bi-cart"></span> Cart</a></li>
                <% } %>
            </ul>
            <span class="navbar-text text-white ms-3">
                Hello, <%= loggedIn ? ((model.User)session.getAttribute("user")).getUsername() : "Guest" %>
            </span>
        </div>
    </div>
</nav>

<div class="container mt-4">
    <h1 class="mb-4">List of Products</h1>
    <div class="row">
        <% for(Product p : ProductList.getProducts()) { %>
        <div class="col-md-4 mb-4">
            <div class="card h-100 shadow-sm">
                <img src="<%=p.getImage() %>" class="card-img-top" alt="<%=p.getName() %>" style="max-height:200px;object-fit:cover">
                <div class="card-body bg-white">
                    <h5 class="card-title"><%= p.getName() %></h5>
                    <p class="card-text text-secondary small"><%= p.getDesc() %></p>
                    <h6 class="text-success">₹<%= String.format("%.2f", p.getPrice()) %></h6>
                </div>
                <div class="card-footer bg-transparent border-top-0">
                    <% if (loggedIn) { %>
                        <a href="CartServlet?id=<%=p.getId()%>" class="btn btn-primary w-100"><span class="bi bi-cart-plus"></span> Add to Cart</a>
                    <% } else { %>
                        <a href="login.jsp" class="btn btn-secondary w-100" disabled><span class="bi bi-cart-plus"></span> Add to Cart (Login required)</a>
                    <% } %>
                </div>
            </div>
        </div>
        <% } %>
    </div>
</div>

</body>
</html>
