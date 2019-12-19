<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Project.aspx.cs" Inherits="FYPmanager.WebForm2" %>

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
    body, html {
  height: 100%;
  margin: 0;
}

.bg2 {
  background-image: url("project.jpg");
  height: 100%; 
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
div.test {
  margin-top: 40px;
  background-color:transparent;
  color:black;
  border-color:black;
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
<body class="bg2">
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
<div class="container" style="text-align:left">
    <h1 class="text-light">Add Project</h1>
    <form id="form1" runat="server">
            <table>
                <tr>
                    <td class="text-light">Project Name</td>
                    <td>
                        <asp:TextBox ID="projectName" runat="server" Height="28px" Width="257px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="text-light">Description</td>
                    <td>
                        <asp:TextBox ID="Description" runat="server" Height="111px" Width="261px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button class="btn1 btn btn-primary" ID="pSubmit" runat="server" Text="Submit" OnClick="pSubmit_Click" />
                    </td>
                </tr>
            </table>
        <div class="test">
        <asp:GridView ID="projectTable" runat="server">
        </asp:GridView>
        </div>
    </form>
</>
</div>
</body>
</html>
