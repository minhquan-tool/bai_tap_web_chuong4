<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
         import="org.apache.tomcat.util.security.Escape" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Survey Confirmation</title>
    <link rel="stylesheet" href="styles/survey.css">
</head>
<body>
    <h1>Thanks for completing our survey</h1>
    <p>Here is the information that you entered:</p>

    <p><strong>First Name:</strong> ${empty requestScope.firstName ? '' : Escape.htmlElementContent(requestScope.firstName)}</p>
    <p><strong>Last Name:</strong> ${empty requestScope.lastName ? '' : Escape.htmlElementContent(requestScope.lastName)}</p>
    <p><strong>Email:</strong> ${empty requestScope.email ? '' : Escape.htmlElementContent(requestScope.email)}</p>
    <p><strong>Date of Birth:</strong> ${empty requestScope.dateOfBirth ? '' : Escape.htmlElementContent(requestScope.dateOfBirth)}</p>

    <p>
        <strong>How did you hear about us?</strong>
        ${{'searchEngine': 'Search engine', 'wordOfMouth': 'Word of mouth',
           'Social Media': 'Social Media', 'other': 'Other'}[requestScope.heardFrom]}
    </p>
    <p><strong>Receive announcements:</strong> ${requestScope.wantsUpdates ? 'Yes' : 'No'}</p>
    <p><strong>Receive email announcements:</strong> ${requestScope.wantsEmailUpdates ? 'Yes' : 'No'}</p>
    <p>
        <strong>Contact me by:</strong>
        ${{'both': 'Email or postal mail', 'email': 'Email only',
           'postalMail': 'Postal mail only'}[requestScope.contactVia]}
    </p>

    <p><a href="survey.html">Return to Survey</a></p>
</body>
</html>
