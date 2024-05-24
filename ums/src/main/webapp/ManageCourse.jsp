<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Department</title>

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>
<body>
	<div class="container my-4">
		<div class="container row">
    		<h5 class="modal-title col-11" id="departmentModalLabel">Courses</h5>
       		<a type="button" data-bs-toggle="modal" data-bs-target="#insertModal" class="btn btn-success col-1">Insert</a>
   		</div>
	    <div class="container">
	    	<!-- Table to display departments -->
	        <table class="table table-striped">
	             <thead>
	             	<tr>
	                   <th>ID</th>
	                   <th>Name</th>
	                   <th>Dept ID</th>
	                   <th>Faculty ID</th>
	                   <th>Actions</th>
	                </tr>
	             </thead>
	             <tbody>
	                 <!-- Departments will be displayed here -->
	                 <c:forEach items="${courses}" var="c">
                		<tr>
                    		<form action="updateCourse" method="post">
                        		<input type="hidden" name="courseId" value="${c.courseId}">
                        		<td>${c.courseId}</td>
                        		<td><input type="text" name="courseName" value="${c.courseName}"></td>
                        		<td><input type="text" name="deptId" value="${c.deptId}"></td>
                        		<td><input type="text" name="facultyId" value="${c.facultyId}"></td>
                        		<td><button type="submit" class="btn btn-primary"><i class="bi bi-pencil-square"></i></button></td>
                        		<td><button type="submit" formaction="deleteCourse" class="btn btn-danger"><i class="bi bi-trash3"></i></button></td>
                    		</form>
                		</tr>
            		</c:forEach>
	            </tbody>
	         </table>
	     </div>     
	</div>       
    
               
      <!-- Second modal for inserting data -->
	<div class="modal fade" id="insertModal" tabindex="-1" aria-labelledby="insertModalLabel" aria-hidden="true">
	    <div class="modal-dialog">
	        <div class="modal-content">
	            <div class="modal-header">
	                <h5 class="modal-title" id="insertModalLabel">Insert Data</h5>
	                <button type="button" class="btn btn-close" data-bs-dismiss="modal"></button>
	            </div>
	            <div class="modal-body">
	                <!-- Form for inserting data -->
	                <form id="insertForm" action="insertCourse" method="post">
	                    <div class="form-group">
	                        <label for="courseId">Course ID</label>
	                        <input type="text" class="form-control" id="courseId" name="courseId">
	                    </div>
	                    <div class="form-group">
	                        <label for="courseName">Course Name</label>
	                        <input type="text" class="form-control" id="courseName" name="courseName">
	                    </div>
	                    <div class="form-group">
	                        <label for="deptId">Department ID</label>
	                        <input type="text" class="form-control" id="deptId" name="deptId">
	                    </div>
	                    <div class="form-group">
	                        <label for="facultyId">Faculty ID</label>
	                        <input type="text" class="form-control" id="facultyId" name="facultyId">
	                    </div>
	                    <button type="submit" class="btn btn-success my-2">Insert</button>
	                </form>
	            </div>
	        </div>
	    </div>
	</div>
    
</body>
</html>