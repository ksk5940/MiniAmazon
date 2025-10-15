<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Signup - MiniAmazon</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body class="bg-light">

<div class="container mt-2 mb-2 text-end">
    <a href="index.jsp" class="btn btn-outline-primary"><span class="bi bi-house-door-fill"></span> Home</a>
</div>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-4 shadow p-4 bg-white rounded">
            <h3 class="mb-4 text-center text-primary"><span class="bi bi-person-plus"></span> Signup</h3>
            <% if(request.getAttribute("error") != null) { %>
                <div class="alert alert-danger"><%= request.getAttribute("error") %></div>
            <% } %>
            <form method="post" action="SignupServlet">
                <div class="mb-3">
                    <label class="form-label">Username</label>
                    <input class="form-control" name="username" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Password</label>
                    <input type="password" class="form-control" name="password" required>
                </div>
                <button class="btn btn-success w-100" type="submit"><span class="bi bi-person-plus"></span> Signup</button>
            </form>
            <div class="pt-2 text-center">
                <a href="login.jsp">Already a user? Login</a>
            </div>
        </div>
    </div>
</div>
</body>
</html>
