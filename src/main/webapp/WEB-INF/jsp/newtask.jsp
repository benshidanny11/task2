<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="formcontainer">
		<div class="card">
			<div class="card-header">
				<h3>Add your task</h3>
			</div>
			<div class="card-body">
				<form action="addtask" method="post">
					<div class="form-group">
						<label>Title</label> <input type="text" name="title"
							class="form-control" />
					</div>
					<div class="form-group">
						<label>Content</label> <textarea type="text" name="content"
							class="form-control" ></textarea>
					</div>
					<div class="form-group">
						<label>Date</label> <input type="date" name="date"
							class="form-control" />
					</div>
					<div class="form-group">
						<label>Status</label> <select name="status">
						<option value="High">High </option>
						<option value="Medium">Medium</option>
						<option value="Low">Low</option>
						</select>
					</div>
					<div class="form-group">
						<label>label</label> <select name="status">
						<option value="1">1 </option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						</select>
					</div>
					<div class="form-group">
						<input type="submit" value="Add task" class="btn btn-primary">
					</div>

				</form>
			</div>
		</div>
	</div>

</body>
</html>