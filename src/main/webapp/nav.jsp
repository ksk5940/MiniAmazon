<div class="nav-bar">
  <div class="nav-logo"><img src="assets/amazon-logo.png" height="35" /></div>
  <div class="nav-search">
    <input type="text" placeholder="Search Amazon.in..." />
    <button>🔍</button>
  </div>
  <div class="nav-links">
    <span>Hello, <%= session.getAttribute("user") != null ? ((model.User)session.getAttribute("user")).getUsername() : "Guest" %></span>
    <a href="cart.jsp">🛒 Cart</a>
  </div>
</div>
