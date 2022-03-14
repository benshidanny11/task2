<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 .main {
  display:flex;
  justify-content: center;
 }
 
 .container{
 width:60%;
 }
 
 .top {
  display:flex;
  justify-content: space-between;
  align-items: center;
 }
</style>
</head>

<body>
  <div class="main">
   <div class="container">
   <div class="top">
    <h3>Task app</h3>
    <a href="newtask">Add new</a>
   </div>
   <hr>
   <div class="d-flex justify-content-center align-items-center todo-container">
          			<div class="card card-body">
				<div class="d-flex justify-content-between"><h3>All tasks</h3></div>
				<div>
					<table class="table table-striped">
						<thead>
							<tr>
								<th scope="col">#</th>
								<th scope="col">Title</th>
								<th scope="col">Content</th>
								<th scope="col">Date</th>
								<th scope="col">Status</th>
								<th scope="col">Label</th>
								<th scope="col">action</th>
							</tr>
						</thead>
						<tbody>

							<c:if test="${not empty tasks}">



								<c:forEach var="task" items="${tasks}">
									<tr>
										<th scope="row">${task.id}</th>
										<td>${task.title}</td>
										<td>${task.content}</td>
										<td>${task.date}</td>
										<td>${task.label}</td>
										<td>${task.status}</td>
										<td><a href="/edit/${task.id}" class="btn btn-primary">Edit task</a><a
											href="/delete/${task.id }" class="btn btn-danger">Delete task</a></td>
									</tr>
								</c:forEach>

							</c:if>
						</tbody>
					</table>

				</div>

			</div>
          </div>
		
   </div>
   <div>
    
   </div>
  </div>
</body>
</html>