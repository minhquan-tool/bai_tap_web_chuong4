<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
         import="org.apache.tomcat.util.security.Escape" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Email List Confirmation</title>
    <link rel="stylesheet" href="styles/main.css">
</head>
<body>
    <h1>Thanks for joining our email list</h1>
    <p>Here is the information that you entered:</p>

    <p><strong>First Name:</strong> ${empty user.firstName ? '' : Escape.htmlElementContent(user.firstName)}</p>
    <p><strong>Last Name:</strong> ${empty user.lastName ? '' : Escape.htmlElementContent(user.lastName)}</p>
    <p><strong>Email:</strong> ${empty user.email ? '' : Escape.htmlElementContent(user.email)}</p>

    <p><a href="index.html">Return to Email List</a></p>
</body>
</html>
