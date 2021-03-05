<%@ page contentType="text/html; charset=UTF-8" session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>session</title>
    </head>
    <body>
        <h1><c:out value="${value}"/></h1>
        <form method="POST" action="${pageContext.request.contextPath}/session">
            <p>
                <input type="text" name="value" required>
                <button type="submit">Set</button>
            </p>
        </form>
        <p><a href="${pageContext.request.contextPath}/session">Refresh</a></p>
    </body>
</html>
