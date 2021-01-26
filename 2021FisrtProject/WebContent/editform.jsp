<%@page import="com.javatpoint.dao.UserDao,com.javatpoint.bean.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="fr">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>AppTest</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>

		<%
		UserDao uDao = new UserDao();
		String id = request.getParameter("id"); 
		System.out.println(id); 
		User u = uDao.getRecordById(Integer.parseInt(id));
		%>

<body>

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

<h1>기록 편집하기</h1>

<form action="edituser.jsp" method="post">
	<input type="hidden" value="<%=u.getId()%>" name="id"> 
    <div class="form_horizontal">
      <div class="form-group row">
    <label class="col-form-label col-sm-2" for="Title">Title</label>
    <div class="col-sm-8">
      <input autofocus class="form-control" name="title" value="<%=u.getTitle()%>">
    </div>
</div>

<div class="form-group row">
    <label class="col-form-label col-sm-2" for="Author">Author</label>
    <div class="col-sm-7">
      <input class="form-control" name="author" value="<%=u.getAuthor()%>" >
    </div>
</div>

<div class="form-group row">
    <label class="col-form-label col-sm-2" for="Comments">Comments</label>
    <div class="col-sm-10">
      <textarea class="form-control" name="comment" rows="7" cols="20"><%=u.getComment()%></textarea>
    </div>
</div>
<div class="form-group row">
    <label class="col-form-label col-sm-2" for="Regdate">Registered Date</label>
    <div class="col-sm-7">
      <input class="form-control" name="regdate" value="<%=u.getRegdate()%>" >
    </div>
</div>
      <div class="form-group row">
        <label class="col-form-label col-sm-2"></label>
        <div class="col-sm-10">
          <input type="submit" name="" value="Update" class="btn btn-default btn-warning" >
          <a class="btn btn-outline-dark cancel"href="list.jsp">Cancel</a>
        </div>
      </div>
    </div>
</form>

  </div>

</body>

</html>
