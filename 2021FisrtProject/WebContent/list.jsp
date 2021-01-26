<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>AppTest</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>

<body>

<%@page import="com.javatpoint.dao.UserDao,com.javatpoint.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

  <div class="container">

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand" href="/">AppTest</a>
      <ul class="navbar-nav mr-auto">
        <li class="nav-item">
          <a class="nav-link" href="/about">About</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/data">Data</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/books">Books</a>
        </li>
      </ul>
    </nav>

<h1>List of books (5)</h1>


<div class="table-responsive-sm">
  <table class="table table-hover">
    <thead>
      <tr>
        <th>Title</th>
        <th>Author</th>
        <th>Comment</th>
        <th>Registered Date</th>
        <th class="d-print-none">
          <a class="btn btn-sm btn-success" href="./addform.jsp">Add</a>
        </th>
      </tr>
    </thead>
    <tbody>
      
    <%
	List<User> list=UserDao.getAllRecords();
	request.setAttribute("list",list);
	%>
      <c:forEach items="${list}" var="u">
        <tr>
          <td>${u.getTitle()}</td> 
          <td>${u.getAuthor()}</td>
          <td>${u.getComment()}</td>
          <td>${u.getRegdate()}</td>
          <td class="d-print-none">
            <a class="btn btn-sm btn-warning" href="./editform.jsp?id=${u.getId()}">Edit</a>
            <a class="btn btn-sm btn-danger" href="./deleteuser.jsp?id=${u.getId()}">Delete</a>
            <a class="btn btn-sm" href="./more.jsp?id=${u.getId()}">More</a>
          </td>
        </tr>
        </c:forEach>
      
    </tbody>
  </table>
  	

</div>



    <footer>
      <p>&copy; 2019 - AppTest</p>
    </footer>

  </div>

</body>

</html>
