<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

 
<!DOCTYPE html>
<html lang="en">
<head>
    <title>UMS</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <style>
        html,body
            {
                box-sizing: border-box;
                overflow-x: hidden;
            }
            header
            {
                background-image: url(lib.jpg);
                width: 100%;
                height: 800px;
            }
            body
            {
                position: relative;
            }
            body::before
            {
                content: "";
                background-image: url(headerimg.png);
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                opacity: 0.5;
                z-index: -1;
            }

            header {
                background-image: url(lib.jpg);
                width: 100%;
                height: 800px;
            }
            .custom-modal {
                position: relative;
                z-index: 1050;
            }

    </style>
</head>
<body class="bg-secondary" data-bs-spy="scroll" data-bs-target=".navbar">
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg bg-dark p-2 fixed-top row align-items-center">
        <div>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#c">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="#c">
                <li class="nav-item col-2"><i class="bi bi-list text-light" data-bs-toggle="offcanvas" data-bs-target="#oc" style="font-size: larger;"></i></li>
                <ul class="navbar-nav nav-fill col-8">
                    <li class="nav-item"><a class="nav-link text-light" href="#home">Home</a></li>
                    <li class="nav-item"><a class="nav-link text-light" href="#admissions">Admissions</a></li>
                    <li class="nav-item"><a class="nav-link text-light" href="#research">Research</a></li>
                    <li class="nav-item"><a class="nav-link text-light" href="#alumni">Alumni</a></li>
                    <li class="nav-item"><a class="nav-link text-light" href="#contact">Contact</a></li>
                </ul>
                <li class="nav-item col-2 d-flex justify-content-end px-5"><i type="button" class="bi bi-person-circle text-light float-right" data-bs-toggle="modal" data-bs-target="#signin" style="font-size: larger;"></i></li>
            </div>
        </div>
    </nav>

    <!-- Offcanvas menu -->
    <div class="offcanvas offcanvas-start text-bg-dark" id="oc" style="--bs-bg-opacity: 0.9">
        <div class="offcanvas-header">
            <h2 class="offcanvas-title">UMS</h2>
            <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas"></button>
        </div>
        <div class="offcanvas-body">
            <a href="#" class="btn btn-dark text-light col-11 p-3 m-3">Students</a>
            <a type="button" data-bs-toggle="modal" data-bs-target="#courseModal" class="btn btn-dark text-light col-11 p-3 m-3">Courses</a>
            <a href="#" class="btn btn-dark text-light col-11 p-3 m-3">Enrollments</a>
            <a href="" type="button" data-bs-toggle="modal" data-bs-target="#facultyModal" class="btn btn-dark text-light col-11 p-3 m-3">Faculties</a>
            <a href="ManageDepartment.jsp" type="submit"  class="btn btn-dark text-light col-11 p-3 m-3">Departments</a>
        </div>
    </div>
    <!-- Modal for Signin -->
    <div class="modal modal-md fade bg-dark" style="--bs-bg-opacity: 0.5" id="signin">
        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
            <div class="modal-content modal-content-md text-bg-dark" style="--bs-bg-opacity: 0.9">
                <div class="modal-header text-light border-secondary">
                    <h3 class="modal-title">UMS</h3>
                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
                </div>
                <div class="modal-body border-secondary">
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs" id="loginTabs" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active" id="login-tab" data-bs-toggle="tab" data-bs-target="#login" type="button" role="tab" aria-controls="login" aria-selected="true">Login</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="signup-tab" data-bs-toggle="tab" data-bs-target="#signup" type="button" role="tab" aria-controls="signup" aria-selected="false">Sign Up</button>
                        </li>
                    </ul>
                    <!-- Tab panes -->
                    <div class="tab-content mt-3">
                        <!-- Login Tab Content -->
                        <div class="tab-pane fade show active" id="login" role="tabpanel" aria-labelledby="login-tab">
                            <div class="form-floating mb-3">
                                <input type="email" class="form-control border-secondary" id="loginMail" placeholder="Enter your Mail" required>
                                <label for="loginMail" class="form-label text-dark">Email</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="password" class="form-control border-secondary" id="loginPwd" placeholder="Enter your password" required>
                                <label for="loginPwd" class="form-label text-dark">Password</label>
                            </div>
                            <div class="form-check form-switch mb-3">
                                <input class="form-check-input focus-ring" type="checkbox" id="loginSwitch" name="remember" value="yes" checked style="--bs-focus-ring-color: rgba(var(--bs-warning-rgb), .25)">
                                <label class="form-check-label">Remember me</label>
                            </div>
                            <button type="button" class="btn btn-dark" id="loginButton">Login</button>
                        </div>
                        <!-- Signup Tab Content -->
                        <div class="tab-pane fade" id="signup" role="tabpanel" aria-labelledby="signup-tab">
                            <div class="form-floating mb-3">
                                <input type="email" class="form-control border-secondary" id="signupMail" placeholder="Enter your Mail" required>
                                <label for="signupMail" class="form-label text-dark">Email</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="password" class="form-control border-secondary" id="signupPwd" placeholder="Enter your password" required>
                                <label for="signupPwd" class="form-label text-dark">Password</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="password" class="form-control border-secondary" id="confirmPwd" placeholder="Confirm password" required>
                                <label for="confirmPwd" class="form-label text-dark">Confirm Password</label>
                            </div>
                            <button type="button" class="btn btn-dark" id="signupButton">Sign Up</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    

    
    <!-- Main Content -->
    <header id="home" class="d-flex align-items-center">
        <div id="carouselExampleControls" class="carousel slide col-8 m-3" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="images/university1.jpg" class="d-block w-100" alt="University 1">
                </div>
                <div class="carousel-item">
                    <img src="images/university2.jpg" class="d-block w-100" alt="University 2">
                </div>
                <div class="carousel-item">
                    <img src="images/university3.jpg" class="d-block w-100" alt="University 3">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
        <div class="card border-dark bg-dark text-light p-3 col-3 m-3" style="--bs-bg-opacity: 0.9">
            <div class="card-header border-secondary">
                <h2 style="text-transform: uppercase;">Welcome to Our University</h2>
            </div>
            <div>
                <span></span>
            </div>
        </div>
        <div class="col-3 ps-4 m-3">
            <button class="btn btn-lg custom-button col-10 m-2"><span>Explore</span></button>
            <button class="btn btn-lg custom-button col-10 m-2"><span>Admissions</span></button>
        </div>
    </header>    

    <div id="about" class="container my-4 rounded d-flex justify-content-center">
        <div class="card bg-black text-light p-3 col-12" style="--bs-bg-opacity: 0.8">
            <div class="card-header border-secondary">
                <h1>About Our University</h1>
            </div>
            <div class="card-body">
                <p>Welcome to our university! We're dedicated to fostering an environment of academic excellence, innovation, and personal growth.</p>
            </div>
            <div class="card-body">
                <h3>Our Mission</h3>
                <p>Our mission is to provide quality education that empowers individuals to reach their full potential and contribute positively to society.</p>
            </div>
            <div class="card-body">
                <h3>Academic Excellence</h3>
                <p>We pride ourselves on our rigorous academic programs designed to challenge and inspire students. Our distinguished faculty are leaders in their fields, and our modern facilities provide an ideal environment for learning and research.</p>
            </div>
            <div class="card-body">
                <h3>Student-Centered Approach</h3>
                <p>At our university, students come first. We offer a supportive and inclusive community where every student is valued and encouraged to pursue their passions. Our comprehensive student services ensure that each individual receives the guidance and support they need to succeed.</p>
            </div>
            <div class="card-body">
                <h3>Global Perspective</h3>
                <p>We embrace diversity and foster a global perspective in all aspects of our university experience. Our international programs, partnerships, and exchange opportunities prepare students to thrive in an interconnected world.</p>
            </div>
            <div class="card-body">
                <h3>Community Engagement</h3>
                <p>As an integral part of our local and global communities, we are committed to making a positive impact through service, research, and outreach. Our students, faculty, and staff actively contribute to solving real-world problems and improving lives.</p>
            </div>
        </div>
    </div>

    <div class="row d-flex justify-content-center">
        <!-- Academics Card -->
        <div id="academics" class="col-md-5 my-4">
            <div class="card border-dark bg-dark text-light p-3" style="--bs-bg-opacity: 0.8">
                <div class="card-header border-black">
                    <h1>Academics</h1>
                </div>
                <div class="card-body">
                    <p>Our university offers a wide range of academic programs designed to meet the diverse interests and career goals of our students. Explore our departments and programs:</p>
                    <ul>
                        <li>Arts & Humanities</li>
                        <li>Business & Economics</li>
                        <li>Engineering</li>
                        <li>Health Sciences</li>
                        <li>Science & Technology</li>
                        <li>Law</li>
                    </ul>
                </div>
                <div class="card-footer">
                    <a href="#contact" class="btn btn-dark">Contact Academics</a>
                </div>
            </div>
        </div>
    
        <!-- Admissions Card -->
        <div id="admissions" class="col-md-5 my-4">
            <div class="card border-dark bg-dark text-light p-3" style="--bs-bg-opacity: 0.8">
                <div class="card-header border-black">
                    <h1>Admissions</h1>
                </div>
                <div class="card-body">
                    <p>Thank you for considering our university for your academic journey. Here's some information about our admission process:</p>
                    <ul>
                        <li>Explore our academic programs to find the one that suits your interests and goals.</li>
                        <li>Review the admission requirements for your chosen program.</li>
                        <li>Complete the online application form.</li>
                        <li>Wait for notification of your admission status.</li>
                        <li>Upon acceptance, follow the instructions to enroll in your chosen program.</li>
                    </ul>
                </div>
                <div class="card-footer">
                    <a href="#contact" class="btn btn-dark">Contact Admissions</a>
                </div>
            </div>
        </div>
    </div>
     
    
    <div id="research" class="container my-4 rounded">
        <div class="card bg-black text-light col-8 mx-auto p-3" style="--bs-bg-opacity: 0.8">
            <div class="card-header border-secondary">
                <h1>Research</h1>
            </div>
            <div class="card-body">
                <p>Research is a vital component of our university's mission, driving innovation and discovery in various fields.</p>
                <p>Our faculty and students engage in groundbreaking research projects, contributing to advancements in:</p>
                <ul>
                    <li>Biotechnology and Life Sciences</li>
                    <li>Computer Science and Information Technology</li>
                    <li>Environmental Studies</li>
                    <li>Medicine and Health</li>
                    <li>Social Sciences</li>
                    <li>Engineering</li>
                </ul>
                <p>Through collaborative efforts and state-of-the-art facilities, we aim to address complex global challenges and make a positive impact on society.</p>
            </div>
        </div>
    </div>    
    
    <div id="alumni" class="container my-4 rounded d-flex justify-content-center">
        <div class="card row bg-dark text-light p-3 col-8 " style="--bs-bg-opacity: 0.8">
            <div class="card-header m-2 border-black d-flex justify-content-center">
                <h3>Our Alumni</h3>
            </div>
            <div class="card-body row justify-content-center">
                <div class="card border-success text-bg-dark col-2 ms-4 p-3 align-items-center">
                    <div class="card-img-top"><img src="alumni1.jpg" width="135px"></div>
                    <div class="card-header border-success">John Doe</div>
                    <div class="card-footer">
                        <a href="#" class="btn btn-primary">LinkedIn</a>
                    </div>
                </div>
                <div class="card border-info text-bg-dark col-2 ms-4 p-3 align-items-center">
                    <div class="card-img-top"><img src="alumni2.jpg" width="135px"></div>
                    <div class="card-header border-info">Jane Smith</div>
                    <div class="card-footer">
                        <a href="#" class="btn btn-primary">LinkedIn</a>
                    </div>
                </div>
                <div class="card border-info text-bg-dark col-2 ms-4 p-3 align-items-center">
                    <div class="card-img-top"><img src="alumni3.jpg" width="135px"></div>
                    <div class="card-header border-info">Michael Johnson</div>
                    <div class="card-footer">
                        <a href="#" class="btn btn-primary">LinkedIn</a>
                    </div>
                </div>
                <div class="card border-info text-bg-dark col-2 ms-4 p-3 align-items-center">
                    <div class="card-img-top"><img src="alumni4.jpg" width="135px"></div>
                    <div class="card-header border-info">Emily Davis</div>
                    <div class="card-footer">
                        <a href="#" class="btn btn-primary">LinkedIn</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    

    <div id="contact" class="my-4 rounded row d-flex justify-content-center">
        <div class="card bg-black text-white col-6 text-center" style="--bs-bg-opacity: 0.8">
            <div class="card-header border-secondary"><h1>Contact Us</h1></div>
            <div class="card-body">
                <form class="form text-dark">
                    <div class="input-group mb-3">
                        <div class="form-floating">
                            <input type="text" class="form-control" id="name" placeholder="Enter your name" required>
                            <label for="name" class="form-label">First Name</label>
                        </div>
                        <div class="form-floating">
                            <input type="text" class="form-control" id="name" placeholder="Enter your name">
                            <label for="name" class="form-label">Last Name</label>
                        </div>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="email" class="form-control" id="mail" placeholder="Enter your Mail" required>
                        <label for="mail" class="form-label">Email</label>
                    </div>
                    <div class="form-floating mb-3">
                        <textarea class="form-control" placeholder="Leave a comment here" id="msg" style="height: 100px;"></textarea>
                        <label for="msg" class="form-label">Comments</label>
                    </div>
                    <button type="button" class="btn btn-outline-secondary">Send</button>
                </form>
            </div>
        </div>
    </div>

    <footer class="bg-dark text-light py-4">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h5>Quick Links</h5>
                    <ul class="list-unstyled">
                        <li><a href="#home" class="text-light">Home</a></li>
                        <li><a href="#about" class="text-light">About Us</a></li>
                        <li><a href="#academics" class="text-light">Academics</a></li>
                        <li><a href="#research" class="text-light">Research</a></li>
                        <li><a href="#contact" class="text-light">Contact</a></li>
                    </ul>
                </div>
                <div class="col-md-6">
                    <h5>Contact Information</h5>
                    <p>123 University Street, City, Country</p>
                    <p>Email: info@university.edu</p>
                    <p>Phone: +123 456 7890</p>
                </div>
            </div>
            <hr class="bg-light">
            <div class="row">
                <div class="col-md-6">
                    <p class="text-muted">&copy; 2024 University. All rights reserved.</p>
                </div>
                <div class="col-md-6 text-end">
                    <ul class="list-inline">
                        <li class="list-inline-item"><a href="#" class="text-light">Terms of Use</a></li>
                        <li class="list-inline-item"><a href="#" class="text-light">Privacy Policy</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
    
	<!-- Faculty Modal -->
	<div class="modal fade bg-dark" id="facultyModal">
        <div class="modal-dialog modal-fullscreen modal-dialog-centered">
            <div class="modal-content">
	            <div class="modal-header">
	                <h5 class="modal-title col-11" id="facultyModalLabel">Faculties</h5>
	                <a type="button" class="btn btn-success" data-bs-toggle="modal" aria-label="Insert">Insert</a>
	            </div>
                <div class="modal-body">
	                <!-- Table to display faculties -->
	                
	                <table class="table table-striped">
	                    <thead>
	                        <tr>
	                            <th>ID</th>
                                <th>Name</th>
	                            <th>Department ID</th>
                                <th></th>
	                        </tr>
	                    </thead>
	                    <tbody>
	                        <!-- Iterate over faculties and display them -->
	                        <c:forEach items="${faculties}" var="faculty">
	                            <tr>
	                                <td>${faculty.facultyId}</td>
	                                <td>${faculty.facultyName}</td>
	                                <td>${faculty.deptId}</td>
                                    <td><button type="button" class="btn btn-primary"><i class="bi bi-pencil-square"></i></button></td>
                                    <td><button type="button" class="btn btn-danger"><i class="bi bi-trash3"></i></button></td>
	                            </tr>
	                        </c:forEach>
	                    </tbody>
	                </table>
	            </div>
	            <div class="modal-footer">
	                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
	            </div>
            </div>
	    </div>
	</div>
   
    <!-- Course Modal -->
    <div class="modal fade" id="courseModal" tabindex="-1" aria-labelledby="courseModalLabel" data-bs-backdrop="static" aria-hidden="true">
        <div class="modal-dialog modal-fullscreen modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title col-11" id="courseModalLabel">Courses</h5>
                    <button type="button" class="btn btn-success" data-bs-toggle="modal" aria-label="Insert">Insert</button>
                </div>
                <div class="modal-body">
                    <!-- Table to display courses -->
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Department ID</th>
                                <th>Faculty ID</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- Iterate over courses and display them -->
                            <c:forEach items="${courses}" var="course">
                                <tr>
                                    <td>${course.courseId}</td>
                                    <td>${course.courseName}</td>
                                    <td>${course.deptId}</td>
                                    <td>${course.facultyId}</td>
                                    <td><button type="button" class="btn btn-primary"><i class="bi bi-pencil-square"></i></button></td>
                                    <td><button type="button" class="btn btn-danger"><i class="bi bi-trash3"></i></button></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    
</body>
</html>
    