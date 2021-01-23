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
        <th class="d-print-none">
          <a class="btn btn-sm btn-success" href="./addform.jsp">Add</a>
        </th>
      </tr>
    </thead>
    <tbody>
      
        <tr>
          <td>Discrete Mathematics</td>
          <td>Evan S. Connell</td>
          <td>이산수학 교재이다. 매우 두껍다. 영어로 쓰여져있다.</td>
          <td class="d-print-none">
            <a class="btn btn-sm btn-warning" href="/edit/1">Edit</a>
            <a class="btn btn-sm btn-danger" href="/delete/1">Delete</a>
            <a class="btn btn-sm" href="/more/1">More</a>
          </td>
        </tr>
      
        <tr>
          <td>bear</td>
          <td>test</td>
          <td>이미지올리기</td>
          <td class="d-print-none">
            <a class="btn btn-sm btn-warning" href="/edit/18">Edit</a>
            <a class="btn btn-sm btn-danger" href="/delete/18">Delete</a>
            <a class="btn btn-sm" href="/more/18">More</a>
          </td>
        </tr>
      
        <tr>
          <td>fanil</td>
          <td>fff</td>
          <td>fff</td>
          <td class="d-print-none">
            <a class="btn btn-sm btn-warning" href="/edit/17">Edit</a>
            <a class="btn btn-sm btn-danger" href="/delete/17">Delete</a>
            <a class="btn btn-sm" href="/more/17">More</a>
          </td>
        </tr>
      
        <tr>
          <td>image test</td>
          <td>Seung</td>
          <td>image 테스트 입니당</td>
          <td class="d-print-none">
            <a class="btn btn-sm btn-warning" href="/edit/19">Edit</a>
            <a class="btn btn-sm btn-danger" href="/delete/19">Delete</a>
            <a class="btn btn-sm" href="/more/19">More</a>
          </td>
        </tr>
      
        <tr>
          <td>가르침은 예술이다</td>
          <td>존 반 다이크</td>
          <td>123</td>
          <td class="d-print-none">
            <a class="btn btn-sm btn-warning" href="/edit/6">Edit</a>
            <a class="btn btn-sm btn-danger" href="/delete/6">Delete</a>
            <a class="btn btn-sm" href="/more/6">More</a>
          </td>
        </tr>
      
    </tbody>
  </table>
  	<%
	List<User> list=UserDao.getAllRecords();
	request.setAttribute("list",list);
	%>
  <table border="1" width="90%">
<tr><th>Id</th><th>Title</th><th>Author</th><th>Comment</th><th>Registered Date</th></tr>
<c:forEach items="${list}" var="u">
	<tr><td>${u.getId()}</td><td>${u.getTitle()}</td><td>${u.getAuthor()}</td><td>${u.getComment()}</td><td>${u.getRegDate()}</td></tr>
</c:forEach>
</table>

</div>



    <footer>
      <p>&copy; 2019 - AppTest</p>
    </footer>

  </div>

</body>

</html>
