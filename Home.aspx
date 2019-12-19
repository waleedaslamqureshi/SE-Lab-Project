<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="FYPmanager.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>-->
	<link rel="stylesheet" href="bootstrap.min.css"/>
    <style>
  /* Make the image fully responsive */
  div.test {
  margin-top: 50px;
  margin-bottom: 30px;
  color: white;
    }
  .carousel-inner img {
      width: 100%;
      height: 100%;
  }
  .btn1{
      background-color:transparent !important;
      color: black;
      width:100%;
      font-size: 20px;
      font-weight:700;
      border-color: black;
  }
  </style>
</head>
<body style="background-image: url('home.jpg');">
    <!-- Nav-bar-->
<nav class="navbar navbar-expand-lg navbar-light" style="background-color:firebrick">
  <a class="navbar-brand text-light" href="Home.aspx"><h2 style="color:white">Project Manager</h2></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
 </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
        <li class="nav-item ">
        <a class="nav-link text-light" href="Home.aspx"><h5>Home</h5></a>
      </li>
        <li class="nav-item ">
        <a class="nav-link text-light" href="Student.aspx"><h5>Student</h5></a>
      </li>
      <li class="nav-item ">
        <a class="nav-link text-light" href="Advisor.aspx"><h5>Advisor</h5></a>
      </li>
      <li class="nav-item">
        <a class="nav-link text-light" href="Project.aspx"><h5>Add Project</h5></a>
      </li>
        <li class="nav-item">
        <a class="nav-link text-light" href="assignProject.aspx"><h5>Assigning Project</h5></a>
      </li>
        <li class="nav-item">
        <a class="nav-link text-light" href="evaluationProject.aspx"><h5>Evaluation of Project</h5></a>
      </li>
    </ul>
  </div>
</nav>
    <form id="form1" runat="server">
        <div class="test text-left container text-Success font-weight-bold">
            <h1>Welcome to Project Manager!</h1>
        </div>
        <div class="text-left container">
            <div class="col-md-3" style="background-color:firebrick; padding:10px; border-radius:10px;">
            <button type="button" class="btn1 btn btn-lg btn-primary" onclick="window.location.href = 'Student.aspx';">1.Student</button>
            <br /><br />
            <button type="button" class="btn1 btn btn-lg btn-primary" onclick="window.location.href = 'Advisor.aspx';">2.Advisor</button>
            <br /><br />
            <button type="button" class="btn1 btn btn-primary btn-lg" onclick="window.location.href = 'Project.aspx';">3.New Project</button>
            <br /><br />
            <button type="button" class="btn1 btn btn-primary btn-lg" onclick="window.location.href = 'assignProject.aspx';">4.Assign Project</button>
            <br /><br />
            <button type="button" class="btn1 btn btn-primary btn-lg" onclick="window.location.href = 'evaluationProject.aspx';">5.Project Evaluation</button>
            </div>
            <div class="col-md-9"></div>
        </div>
    </form>
   
</body>
</html>
