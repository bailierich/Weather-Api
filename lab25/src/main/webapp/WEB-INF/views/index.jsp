<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Daily Weather</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<link href="/style.css" rel="stylesheet" />
</head>
<body>
<h1>Detroit Weather</h1>
<table class = table>
  <thead>
<tr>
<th>Day</th>
<th></th>
<th>Temperature</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<c:forEach var ="day" items="${dailyWeather}">
<tr>
<td><c:out value="${day.startPeriodName}"></c:out></td>
<td><c:out value="${day.tempLabel}"></c:out></td>
<td><c:out value="${day.temperature}"></c:out></td>
<td><c:out value="${day.text}"></c:out></td>
<td><img src="${day.iconLink }" ></td>
</tr>
</c:forEach>
</tbody>
</table>
</div>

</body>
</html>