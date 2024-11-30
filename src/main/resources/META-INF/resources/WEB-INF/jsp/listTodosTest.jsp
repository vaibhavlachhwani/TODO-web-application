<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Hey, ${username}!</title>
</head>
<body style="background-color: whitesmoke">
<div>
    <table>
        <thead>
        <tr>
            <th>id</th>
            <th>Description</th>
            <th>Due Date</th>
            <th>Status</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach items="${todos}" var="todos">
                <tr>
                    <td>${todos.id}</td>
                    <td>${todos.description}</td>
                    <td>${todos.dueDate}</td>
                    <td>${todos.done}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>