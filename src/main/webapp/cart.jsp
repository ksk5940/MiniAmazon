<%@ page import="java.util.*,model.Product" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Cart - MiniAmazon</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
  <link rel="stylesheet" href="css/style.css">
</head>
<body class="bg-light">

<div class="container mt-2 mb-2 text-end">
  <a href="index.jsp" class="btn btn-outline-primary">
    <span class="bi bi-house-door-fill"></span> Home
  </a>
</div>

<%
  boolean loggedIn = (session.getAttribute("user") != null);
%>
<% if (!loggedIn) { %>
  <div class="container mt-4">
    <div class="alert alert-danger text-center">
      You must <a href="login.jsp">login</a> to view your cart.
    </div>
  </div>
<% } else { %>
  <div class="container mt-5">
    <h2 class="mb-4 text-center"><span class="bi bi-cart"></span> Your Cart</h2>
    <% if (request.getAttribute("error") != null) { %>
      <div class="alert alert-danger text-center"><%= request.getAttribute("error") %></div>
    <% } %>
    <%
      List<Product> cart = (List<Product>) session.getAttribute("cart");
      if (cart == null || cart.isEmpty()) {
    %>
      <div class="alert alert-info text-center">Your cart is empty.</div>
    <%
      } else {
    %>
      <table class="table table-bordered table-striped">
        <thead>
          <tr>
            <th>Image</th>
            <th>Name</th>
            <th>Price</th>
          </tr>
        </thead>
        <tbody>
          <% for (Product p : cart) { %>
            <tr>
              <td><img src="<%=p.getImage()%>" style="height:50px"></td>
              <td><%=p.getName()%></td>
              <td>₹<%=p.getPrice()%></td>
            </tr>
          <% } %>
        </tbody>
      </table>
      <form method="post" action="CheckoutServlet">
        <button class="btn btn-success w-100">
          <span class="bi bi-bag-check"></span> Checkout
        </button>
      </form>
    <%
      }
    %>
  </div>
<% } %>

</body>
</html>
